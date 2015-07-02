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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipCodeText.delegate = ZipCodeDelegate()
        cashValueText.delegate = CashValueDelegate()
        switchCodeText.delegate = SwitchCodeDelegate(switchButton : self.switchButton)
        
    }
}

