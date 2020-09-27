//
//  FotoTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class FotoTableViewCell: UITableViewCell {
    var identifier = "photoCell"
//    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var downloadedImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let url:URL = URL(string: "https://http2.mlstatic.com/vegeta-tamano-real-para-armar-en-papaercraft-D_NQ_NP_892880-MLA26232224460_102017-F.jpg" ){
            self.downloadedImageView.load(url: url)
        }
    }

    
}
