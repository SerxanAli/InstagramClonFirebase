//
//  Helper.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import Foundation
import UIKit


class Helper  {
    
    
    static func AlertAction(title:String,message:String,viewController:UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertButtonOK = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertButtonOK)
        viewController.present(alert, animated: true)
        
    }
    
    
    
}



