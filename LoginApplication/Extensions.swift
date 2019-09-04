//
//  Extensions.swift
//  LoginApplication
//
//  Created by Pramod Reddy Nomula on 22/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(title:String, message:String){
        var alertTitle = ""
        if title.characters.count == 0
        {
            alertTitle = "login App"
        }
        else{
            alertTitle = title
        }
        
    let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
}
}
extension String{
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
