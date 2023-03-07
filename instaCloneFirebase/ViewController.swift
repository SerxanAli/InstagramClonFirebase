//
//  ViewController.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SignInClicked(_ sender: UIButton) {
    
        
        if emailText.text != "" {
            
            if passwordText.text != "" {
                
                Auth.auth().signIn(withEmail: emailText.text! , password: passwordText.text!) { (AuthDataResult, Error)
                    in
                    if Error != nil {
                        Helper.AlertAction(title: "Error", message: Error?.localizedDescription ?? "Unknown error", viewController: self)
                    } else {
                        self.performSegue(withIdentifier: "goToHomeVC", sender: nil)
                    }
                }
                
            } else {
                Helper.AlertAction(title: "Error", message: "password is not", viewController: self)
            }
            
        } else {
            
            Helper.AlertAction(title: "Error", message: "email is not", viewController: self)
            
        }
 
    }
    
    
    @IBAction func SignUpCliced(_ sender: UIButton) {
  
    performSegue(withIdentifier: "goToSignUpVC", sender: nil)
    
    }
    
    
}

