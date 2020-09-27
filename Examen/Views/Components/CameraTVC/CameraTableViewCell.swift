//
//  CameraTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

class CameraTableViewCell: UITableViewCell {
    var identifier = "cameraCell"
    
    lazy var imagePicker = UIImagePickerController()    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
