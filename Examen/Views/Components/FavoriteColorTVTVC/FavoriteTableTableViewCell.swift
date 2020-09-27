//
//  FavoriteTableTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class FavoriteTableTableViewCell: UITableViewCell {
    var identifier = "favoriteTableCell"
    @IBOutlet var colorsTableView: UITableView!
    let colorsViewModel = ColorViewModel()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        colorsTableView?.register(UINib(nibName: "ColorTableViewCell", bundle: nil), forCellReuseIdentifier: ColorTableViewCell().identifier)
        colorsTableView?.estimatedRowHeight = 30
        colorsTableView?.rowHeight = 30
        colorsTableView?.allowsMultipleSelection = true
        colorsTableView?.dataSource = colorsViewModel
        colorsTableView?.delegate = colorsViewModel
        colorsTableView?.separatorStyle = .singleLine
        colorsTableView?.isScrollEnabled = false
    }

    
}
