//
//  mainViewModel.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 24/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//
import UIKit

let optionsArray = [MainModel(title: "Camara", sectionId: 1),MainModel(title: "Foto", sectionId: 2),MainModel(title: "Nombre Completo", sectionId: 3),MainModel(title: "Numero Telefonico", sectionId: 4),MainModel(title: "Fecha Nacimiento", sectionId: 5),MainModel(title: "Sexo", sectionId: 6),MainModel(title: "Color Favorito", sectionId: 7)]

class MainViewModelItem {
     var item: MainModel
    
    var isSelected = false
    
    var title: String {
        return item.title
    }
    
    init(item: MainModel) {
        self.item = item
    }
}

class MainViewModel: NSObject {
    var items = [MainViewModelItem]()
    
    var didToggleSelection: ((_ hasSelection: Bool) -> ())? {
        didSet {
            didToggleSelection?(!selectedItems.isEmpty)
        }
    }
    
    var selectedItems: [MainViewModelItem] {
        return items.filter { return $0.isSelected }
    }
    
    override init() {
        super.init()
        items = optionsArray.map { MainViewModelItem(item: $0) }
    }
}

extension MainViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell().mainCellIdentifier, for: indexPath) as? MainTableViewCell {
            cell.item = items[indexPath.row]
            if items[indexPath.row].isSelected {
                if !cell.isSelected {
                    tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
                }
            } else {
                if cell.isSelected {
                    tableView.deselectRow(at: indexPath, animated: false)
                }
            }
            
            return cell
        }
        return UITableViewCell()
    }
}

extension MainViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = true
        
        didToggleSelection?(!selectedItems.isEmpty)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = false
        didToggleSelection?(!selectedItems.isEmpty)
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath
    }
}
