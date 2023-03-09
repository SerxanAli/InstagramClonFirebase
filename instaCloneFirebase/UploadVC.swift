//
//  UploadVC.swift
//  instaCloneFirebase
//
//  Created by serhan on 07.03.23.
//

import UIKit

class UploadVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    
    
    @IBOutlet weak var selectImagesLabel: UIImageView!
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var uploadButtonLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        selectImagesLabel.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        
        selectImagesLabel.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func chooseImage() {
        
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true) {
            print("secildi")
        }
        
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        selectImagesLabel.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true,completion: nil)
    }
    
    
    
    @IBAction func UploadButtonClicked(_ sender: UIButton) {
        
        
        
        
        
    }
    
    
    
}
