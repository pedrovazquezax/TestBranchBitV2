//
//  OptionsViewModel.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 24/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

var selectedOptionsArray: [MainModel] = []


class OptionsViewModelItem {
    var item: MainModel
    
    var title: String {
        return item.title
    }

    
    init(item: MainModel) {
        self.item = item
    }
}

class OptionsViewModel: NSObject {
    var items = [OptionsViewModelItem]()

    override init() {
        super.init()
        items = selectedOptionsArray.map {OptionsViewModelItem(item: $0)}
    }
}

extension OptionsViewModel: UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].title
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch items[indexPath.section].title{
        case "Camara":
           let cell = tableView.dequeueReusableCell(withIdentifier: CameraTableViewCell().identifier, for: indexPath) as! CameraTableViewCell
            cell.selectionStyle = .none
          
                return cell
        case "Foto":
            let cell = tableView.dequeueReusableCell(withIdentifier: FotoTableViewCell().identifier, for: indexPath) as! FotoTableViewCell
            cell.selectionStyle = .none
            
                 return cell
            
        case "Numero Telefonico":
            let cell = tableView.dequeueReusableCell(withIdentifier: PhoneNumberTableViewCell().identifier, for: indexPath) as! PhoneNumberTableViewCell
            cell.selectionStyle = .none
             
                 return cell

        case "Nombre Completo":
            let cell = tableView.dequeueReusableCell(withIdentifier: CompleteNameTableViewCell().identifier, for: indexPath) as! CompleteNameTableViewCell
            cell.selectionStyle = .none
             
                 return cell
        case "Fecha Nacimiento":
            let cell = tableView.dequeueReusableCell(withIdentifier: DateTableViewCell().identifier, for: indexPath) as! DateTableViewCell
            cell.selectionStyle = .none
             
                 return cell
        case "Sexo":
            let cell = tableView.dequeueReusableCell(withIdentifier: GenderTableTableViewCell().identifier, for: indexPath) as! GenderTableTableViewCell
            cell.selectionStyle = .none
            
                 return cell
        case "Color Favorito":
            let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteTableTableViewCell().identifier, for: indexPath) as! FavoriteTableTableViewCell
            cell.selectionStyle = .none

                 return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch items[indexPath.section].title{
        case "Camara":
           return 100
        case "Foto":
            return 150
        case "Nombre Completo":
            return 70
        case  "Numero Telefonico":
            return 70
        case "Fecha Nacimiento":
            return 110
        case "Sexo":
            return 100
        case "Color Favorito":
            return 150
        default:
            return 70
        }
    }
}
