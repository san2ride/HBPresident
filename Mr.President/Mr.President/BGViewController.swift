//
//  BGViewController.swift
//  Mr.President
//
//  Created by don't touch me on 7/14/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class BGViewController: UIViewController {
    
    var selectedBackGroundImage: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func firstButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "m4.medium")
        self.performSegueWithIdentifier("CameraSegue", sender: nil)
        
    }
    
    @IBAction func secondButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "m1")
        self.performSegueWithIdentifier("CameraSegue", sender: nil)
    }
    
    @IBAction func thirdButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "m3")
        self.performSegueWithIdentifier("CameraSegue", sender: nil)
    }
    
    @IBAction func fourthButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "m2")
        self.performSegueWithIdentifier("CameraSegue", sender: nil)
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as? CameraViewController
        
        controller?.recieveImage = self.selectedBackGroundImage
        
    }

    
}
