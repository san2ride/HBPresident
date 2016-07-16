//
//  CameraViewController.swift
//  Mr.President
//
//  Created by don't touch me on 7/15/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import AVFoundation
class CameraViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
   let imagePicker = UIImagePickerController()

    var recieveImage: UIImage?
    var recievePhoto: UIImage?
//    var recievePlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagePicker.delegate = self
    }
    
    @IBAction func captureImage(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            imagePicker.sourceType = .Camera
        } else {
            self.imagePicker.sourceType = .PhotoLibrary
        }
        
        self.imagePicker.allowsEditing = true
        self.presentViewController(self.imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            
            self.imageView.contentMode = .ScaleAspectFit
            self.imageView.image = pickedImage
            self.recievePhoto = pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func nextButtonTapped(sender: AnyObject) {
        
        self.performSegueWithIdentifier("BirthdaySegue", sender: nil)
//        self.recievePlayer?.play()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let controller = segue.destinationViewController as? BirthdayViewController {
        
            controller.thePhoto = self.recievePhoto
            controller.selectedBackGroundImage = self.recieveImage
//            controller.backGroundPlayer = self.recievePlayer
        
        } else {
            print("not the correct segue")
        }
    
    }
    
}
