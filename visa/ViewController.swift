//
//  ViewController.swift
//  visa
//
//  Created by EdgardVS on 8/08/22.
//

import UIKit
import VisaNetSDK

class ViewController: UIViewController, VisaNetDelegate {

   
    func registrationDidEnd(serverError: Any?, responseData: Any?) {
        if serverError == nil {
            responseData.map { data in
                print(data)
            }
            
              }
              else {
              /* Do Something with NSError */
              }
    }
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.getStringData { response in
            switch response {
            case .success(let token):
                self.presentVisa(with: token)
            case .failure(let error):
                print("error:", error)
            }
        
        }
        
    }
    
    func presentVisa(with token: String) {
        Config.CE.dataChannel = .mobile
        Config.securityToken = token
        Config.merchantID = "341198210"
        Config.CE.purchaseNumber = "1790"
        Config.PINSHA256DEV = "D6rSeGVZdgfsMVIUabjeGDzS7YvLVp7pbnRhCggz/B4="
        Config.amount = 15.22
        _ = VisaNet.shared.presentVisaPaymentForm(viewController: self)
    }


}

