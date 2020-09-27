//
//  DateTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class DateTableViewCell: UITableViewCell {
    @IBOutlet var textField: UITextField!
    @IBOutlet var pickerView: UIDatePicker!
    var identifier = "dateCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        textField.isEnabled = false
        pickerView.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
        }

    @objc func datePickerChanged(picker: UIDatePicker) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd-MM-yyyy"
             textField.text = dateFormatter.string(from: pickerView.date)
        }
    
}
