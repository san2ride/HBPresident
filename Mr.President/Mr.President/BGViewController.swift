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
        
        self.selectedBackGroundImage = UIImage(named: "cityBackground")
        self.performSegueWithIdentifier("BirthdaySegue", sender: nil)
        
    }
    
    @IBAction func secondButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "castleBackground")
        self.performSegueWithIdentifier("BirthdaySegue", sender: nil)
    }
    
    @IBAction func thirdButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "funBackground")
        self.performSegueWithIdentifier("BirthdaySegue", sender: nil)
    }
    
    @IBAction func fourthButton(sender: AnyObject) {
        
        self.selectedBackGroundImage = UIImage(named: "redBackground")
        self.performSegueWithIdentifier("BirthdaySegue", sender: nil)
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as? HappyBirthdayViewController
        
        controller?.recieveImage = self.selectedBackGroundImage
        
        
    }

    
    

    
    

    
}
