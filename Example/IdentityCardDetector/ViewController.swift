//
//  ViewController.swift
//  CardDetector
//
//  Created by Karthik on 05/04/21.
//

import UIKit
import CoreML
import Vision
import ImageIO
import Foundation

class ViewController: UIViewController { //},MLProtoDelegate {

    @IBOutlet weak var classificationLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
//    var mlHandler:MLHandler?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        mlHandler = MLHandler()
//        mlHandler?.delegate = self
//    }
//
//    func updateLabel(_ str: String) {
//        DispatchQueue.main.async {
//            self.classificationLabel.text = str
//        }
//    }
//
//    // MARK: - Photo Actions
//
    @IBAction func takePicture() {
        // Show options for the source picker only if the camera is available.
//        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
//            presentPhotoPicker(sourceType: .photoLibrary)
//            return
//        }
//
//        let photoSourcePicker = UIAlertController()
//        let takePhoto = UIAlertAction(title: "Take Photo", style: .default) { [unowned self] _ in
//            self.presentPhotoPicker(sourceType: .camera)
//        }
//        let choosePhoto = UIAlertAction(title: "Choose Photo", style: .default) { [unowned self] _ in
//            self.presentPhotoPicker(sourceType: .photoLibrary)
//        }
//
//        photoSourcePicker.addAction(takePhoto)
//        photoSourcePicker.addAction(choosePhoto)
//        photoSourcePicker.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//
//        present(photoSourcePicker, animated: true)
    }
//
//    func presentPhotoPicker(sourceType: UIImagePickerController.SourceType) {
//        let picker = UIImagePickerController()
//        picker.delegate = self
//        picker.sourceType = sourceType
//        present(picker, animated: true)
//    }
}
    

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // MARK: - Handling Image Picker Selection
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true)
        
        // We always expect `imagePickerController(:didFinishPickingMediaWithInfo:)` to supply the original image.
        let image = info[UIImagePickerController.InfoKey(string: UIImagePickerControllerOriginalImage) as String] as! UIImage
        imageView.image = image
        if #available(iOS 12.0, *) {
//            mlHandler!.updateClassifications(for: image)
        } else {
            // Fallback on earlier versions
        }
    }
}

