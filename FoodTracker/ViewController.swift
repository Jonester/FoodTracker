//
//  ViewController.swift
//  FoodTracker
//
//  Created by Chris Jones on 2017-02-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var mealNamesLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mealTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Mark: Textfield Delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        mealTextField.resignFirstResponder()
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNamesLabel.text = mealTextField.text
    }
    
    //Mark: Actions
    
    @IBAction func selectImage(_ sender: UITapGestureRecognizer) {
        mealTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //Mark: Image Picker Conroller Delegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as?
        UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        mealImage.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
}

