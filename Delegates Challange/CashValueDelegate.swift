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
        
        var result = true
        let prospectiveText = (textField.text as NSString).stringByReplacingCharactersInRange(range, withString: string)
        var newText: NSString = textField.text
        
        if ( newText.length > 0) {
            let disallowedCharacterSet = NSCharacterSet(charactersInString: "0123456789.").invertedSet
            let replacementStringIsLegal = string.rangeOfCharacterFromSet(disallowedCharacterSet) == nil
            
            let scanner = NSScanner(string: prospectiveText)
            let resultingTextIsNumeric = scanner.scanDecimal(nil) && scanner.atEnd
            result = replacementStringIsLegal && resultingTextIsNumeric
            textField.text = formatAsPrice(prospectiveText) as String
        }
        
        return result
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
    func formatAsPrice(priceString: NSString) -> NSString {
        
        var price: NSNumber = NSNumber(double: priceString.doubleValue) ;
        
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.stringFromNumber(price)
        
        formatter.locale = NSLocale.autoupdatingCurrentLocale()
        var priceNumber : NSString = formatter.stringFromNumber(price)!
        
        return priceNumber
        
    }
}