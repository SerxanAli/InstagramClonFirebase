//
//  ProfileVC.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogOutClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToSignInVC", sender: nil)
        
    }
    
    

}
