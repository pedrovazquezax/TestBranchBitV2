//
//  GenderTableTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class GenderTableTableViewCell: UITableViewCell {
    var identifier = "genderTableCell"
    @IBOutlet var GenderTableView: UITableView!
    let gendersViewModel = GenderViewModel()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        GenderTableView?.register(UINib(nibName: "GenderTableViewCell", bundle: nil), forCellReuseIdentifier:GenderTableViewCell().identifier)
        GenderTableView?.estimatedRowHeight = 40
        GenderTableView?.rowHeight = 40
        GenderTableView?.allowsMultipleSelection = false
        GenderTableView?.dataSource = gendersViewModel
        GenderTableView?.delegate = gendersViewModel
        GenderTableView?.separatorStyle = .singleLine
        GenderTableView?.isScrollEnabled = false
        
    }
    
}
