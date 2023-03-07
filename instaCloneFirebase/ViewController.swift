//
//  ViewController.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SignInClicked(_ sender: UIButton) {
    
        performSegue(withIdentifier: "goToHomeVC", sender: nil)
    
    }
    
    
    @IBAction func SignUpCliced(_ sender: UIButton) {
  
    performSegue(withIdentifier: "goToSignUpVC", sender: nil)
    
    }
    
    
}

