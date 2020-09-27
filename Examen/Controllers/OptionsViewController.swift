//
//  OptionsViewController.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 24/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet var selectedOptionsTableView: UITableView!
    var optionsViewModel:OptionsViewModel = OptionsViewModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedOptionsTableView?.register(UINib(nibName: "CameraTableViewCell", bundle: nil), forCellReuseIdentifier: CameraTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "FotoTableViewCell", bundle: nil), forCellReuseIdentifier: FotoTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "CompleteNameTableViewCell", bundle: nil), forCellReuseIdentifier: CompleteNameTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "PhoneNumberTableViewCell", bundle: nil), forCellReuseIdentifier: PhoneNumberTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "DateTableViewCell", bundle: nil), forCellReuseIdentifier: DateTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "GenderTableTableViewCell", bundle: nil), forCellReuseIdentifier: GenderTableTableViewCell().identifier)
        selectedOptionsTableView?.register(UINib(nibName: "FavoriteTableTableViewCell", bundle: nil), forCellReuseIdentifier: FavoriteTableTableViewCell().identifier)
        selectedOptionsTableView?.dataSource = optionsViewModel
        selectedOptionsTableView?.delegate = optionsViewModel
        selectedOptionsTableView?.separatorStyle = .singleLine
        selectedOptionsTableView?.allowsMultipleSelection = false
    }
    
}
