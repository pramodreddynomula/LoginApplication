//
//  TermsAndConditionsVC.swift
//  LoginApplication
//
//  Created by Pramod Reddy Nomula on 22/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import UIKit

class TermsAndConditionsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelClicked(_ sender: Any) {
    
    self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func termsAcceptDone(_ sender: Any) {
    isTermsAccepted = true
        self.navigationController?.dismiss(animated: true, completion: nil)
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
