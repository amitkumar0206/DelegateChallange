//
//  ViewController.swift
//  Delegates Challange
//
//  Created by Amit Kumar on 2015-07-02.
//  Copyright (c) 2015 Agranee Solutions Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeText: UITextField!
    @IBOutlet weak var cashValueText: UITextField!
    @IBOutlet weak var switchCodeText: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    
    let zipCodeCDelegate = ZipCodeDelegate()
    let cashValueDelegate = CashValueDelegate()
    let switchCodeDelegate = SwitchCodeDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipCodeText.delegate = zipCodeCDelegate
        cashValueText.delegate = cashValueDelegate
        
        switchCodeDelegate.switchButton = self.switchButton
        switchCodeText.delegate = switchCodeDelegate
        
    }
    
    @IBAction func switchControl(sender: UISwitch) {
        if switchButton.on {
            switchCodeText.enabled = true
        }
        else {
            switchCodeText.enabled = false
        }
    }
}

