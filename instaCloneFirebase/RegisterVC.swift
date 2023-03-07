//
//  RegisterVC.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordRepitText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
      
        
        if emailText.text != "" {

            if passwordText.text != "" {
                
                if passwordRepitText.text != "" {
                    if passwordText.text == passwordRepitText.text {
                        
                        Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (AuthDataResult, Error) in
                            if Error != nil {
                                Helper.AlertAction(title: "Error", message: Error?.localizedDescription ?? "Unknown error", viewController: self )
                            }else {
                                self.performSegue(withIdentifier: "goToVC", sender: nil)
                            }
                        }
                        
                    }
                } else {
                    Helper.AlertAction(title: "Error", message: "repit password is not", viewController: self )
                }
                
            } else {
                Helper.AlertAction(title: "Error", message: "password is not", viewController: self )
            }

        } else {

            Helper.AlertAction(title: "Error", message: "email is not", viewController: self )

        }
 
    }
    

}
