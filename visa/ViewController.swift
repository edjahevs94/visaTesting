//
//  ViewController.swift
//  visa
//
//  Created by EdgardVS on 8/08/22.
//

import UIKit
import VisaNetSDK

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Config.CE.dataChannel = .mobile
        Config.merchantID = "12345678"
        
    }


}

