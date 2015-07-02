//
//  SwitchCodeDelegate.swift
//  Delegates Challange
//
//  Created by Amit Kumar on 2015-07-02.
//  Copyright (c) 2015 Agranee Solutions Ltd. All rights reserved.
//
import Foundation
import UIKit

class SwitchCodeDelegate : NSObject, UITextFieldDelegate {
    
    var switchButton: UISwitch!
    
    init(switchButton : UISwitch){
        self.switchButton = switchButton
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.enabled = switchButton.on
    }
}