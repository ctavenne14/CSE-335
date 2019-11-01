//
//  CityViewController.swift
//  Homework2
//
//  Created by Cody Tavenner on 4/5/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class CityViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    var selectedCity:String?
    var cDetails:String?
    var cImage:UIImage?


    @IBOutlet weak var newText: UITextField!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityDetails: UILabel!
    
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cityName.text = selectedCity
        cityDetails.text = cDetails
        img.image = cImage

    }
    
    
    @IBAction func edit(_ sender: UIButton) {
        cityDetails.text = text.text
        let alertController = UIAlertController(title: "Change Photo", message: "", preferredStyle: .alert)
        
        let serachAction = UIAlertAction(title: "Picture", style: .default) { (action) in
            // load image
            let photoPicker = UIImagePickerController ()
            photoPicker.delegate = self
            photoPicker.sourceType = .photoLibrary
            // display image selection view
            self.present(photoPicker, animated: true, completion: nil)
            
        }
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                let picker = UIImagePickerController()
                picker.allowsEditing = false
                picker.sourceType = UIImagePickerController.SourceType.camera
                picker.cameraCaptureMode = .photo
                picker.modalPresentationStyle = .fullScreen
                self.present(picker,animated: true,completion: nil)
            } else {
                print("No camera")
            }
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        
        alertController.addAction(cancelAction)
        alertController.addAction(serachAction)
        alertController.addAction(cameraAction)
        
        
        
        self.present(alertController, animated: true, completion: nil)
        
       
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        picker.dismiss(animated: true, completion: nil)
        let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        img.image = photo
        
        
        
    }
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


