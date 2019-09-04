//
//  ViewController.swift
//  LoginApplication
//
//  Created by Pramod Reddy Nomula on 22/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var myLogo: UIImageView!
    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func registrationClicked(_ sender: UIButton) {
   
        var registerVC = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
self.navigationController?.pushViewController(registerVC, animated: true)
        
    }
    
       
    
    
    @IBAction func buttonLoginPressed(_ sender: Any) {
        
        let emailAddress = emailField.text
        let password = passwordField.text
        
        if emailAddress?.characters.count == 0 {
           
          showAlert(title: "login", message: "invalid email")
            return;
        }
        if password?.characters.count == 0{

            showAlert(title: "login", message: "invalid password")
//            let alert = UIAlertController(title: "login", message: "invalid password", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
            print("invalid Password")
        }
     
        showAlert(title: "login", message: "login success")
        //do login
    }
  
    
    
}

