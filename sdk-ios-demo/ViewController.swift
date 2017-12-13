//
//  ViewController.swift
//  sdk-ios-demo
//
//  Created by ImanX on 12/9/17.
//  Copyright © 2017 ImanX. All rights reserved.
//

import UIKit
import ZarinPalSDKPayment
class ViewController: UIViewController , ZarinPalPaymentDelegate {
    
    func didSuccess(refID: String, authority: String, builder: ZarinPal.Builder) {
        print(refID);
    }
    
    func didFailure(code: Int, authority: String?) {
        print(code);
    }
   
    
    @IBAction func click(_ sender: Any) {
        
        let zarinpal =   ZarinPal.Builder(vc: self, merchantID: "***********", amount: 100, description: "asd");
        zarinpal.indicatorColor = UIColor.black;
        zarinpal.title = "درگاه پرداخت";
        zarinpal.pageBackgroundColor = UIColor.lightGray;
        zarinpal.email = "email@gmail.com";
        zarinpal.mobile = "09355106005"
        zarinpal.build().start(delegate: self);
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

