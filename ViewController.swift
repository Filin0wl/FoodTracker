//
//  ViewController.swift
//  FoodTracker
//
//  Created by 123 on 16.04.2020.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    //MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoimageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        nameTextField.delegate = self
       
        }
        
        //MARK: UITextFieldDelegate
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Hide the keyboard.
            textField.resignFirstResponder()
            return true
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            mealNameLabel.text = textField.text
        }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else
        {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        photoimageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }


//MARK: Actions
    @IBAction func selectionimageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        // hide the keyboard
        nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    

}

