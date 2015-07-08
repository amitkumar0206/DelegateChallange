//
//  CashValueDelegate.swift
//  Delegates Challange
//
//  Created by Amit Kumar on 2015-07-02.
//  Copyright (c) 2015 Agranee Solutions Ltd. All rights reserved.
//
import Foundation
import UIKit

class CashValueDelegate : NSObject, UITextFieldDelegate {
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        var num: NSNumber = NSNumber(integer: newText.integerValue)
        textField.text = convertCurrency(num)

        
        return true
        
    }
    
    func convertCurrency(num : NSNumber) -> String {
            var formatter = NSNumberFormatter()
            formatter.maximumFractionDigits = 1
            formatter.numberStyle = .CurrencyStyle
            formatter.locale = NSLocale.currentLocale()
            return formatter.stringFromNumber(num)!
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
}