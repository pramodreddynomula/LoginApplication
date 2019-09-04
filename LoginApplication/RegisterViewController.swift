//
//  RegisterViewController.swift
//  LoginApplication
//
//  Created by Pramod Reddy Nomula on 22/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var termsbtn = UIBarButtonItem(title: "Terms", style: .plain, target: self, action: #selector(termsAndConditionsPressed))
        self.navigationItem.rightBarButtonItem = termsbtn;
        
        self.title = "Register"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func termsAndConditionsPressed(){
        print("terms Accepted")
        
        var mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        var termsVC = mainStoryBoard.instantiateViewController(withIdentifier: "TermsAndConditionNAV")
        self.navigationController?.present(termsVC, animated: true, completion: nil)
        
        
    }
    @IBAction func RegisterButtonPressed(_ sender: Any) {
        
        
        if isTermsAccepted {
            
            var userEmail = emailTextField.text
            if userEmail?.characters.count == 0 {
                showAlert(title: "register", message: "email address shouldnt be empty")
                return;

            }
            if userEmail?.isValidEmail() == false
            {
                showAlert(title: "register", message: "email address should be valid")
                return;
            }
            var userPassword = passwordTextField.text
var userConfirmPassword = confirmPasswordTextField.text
            if userPassword?.characters.count == 0 || userConfirmPassword?.characters.count == 0{
                showAlert(title: "register", message: "password/confirmPass shouldnt be empty")

            }
            if userPassword != userConfirmPassword {
                showAlert(title: "register", message: "password didnt match")
                return
            }
            if userPassword == userConfirmPassword{
                showAlert(title: "register", message: "registration complete")
            }
        }
        else{
           showAlert(title: "", message: "please accept terms and conditions")
        }
        
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
