//
//  CompleteNameTableViewCell.swift
//  Examen
//
//  Created by Pedro Antonio Vazquez Rodriguez on 27/09/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class CompleteNameTableViewCell: UITableViewCell {
    var identifier = "completeNameCell"
    @IBOutlet var textField: UITextField!
    let allowedCharacters = CharacterSet(charactersIn:"ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvxyz ").inverted
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textField.delegate = self
    }
}

extension CompleteNameTableViewCell:UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = textField.text,
            let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                return false
        }
        
        let components = string.components(separatedBy: allowedCharacters)
        let filtered = components.joined(separator: "")
        
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count

        
        if string == filtered && count<=35 {
            
            return true

        } else {
            
            return false
        }
    }
}
