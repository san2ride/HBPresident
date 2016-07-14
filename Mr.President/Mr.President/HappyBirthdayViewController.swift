//
//  HappyBirthdayViewController.swift
//  Mr.President
//
//  Created by don't touch me on 7/14/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class HappyBirthdayViewController: UIViewController {
    
    
    @IBOutlet var birthdayImage: UIImageView!
    
    var recieveImage: UIImage?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.birthdayImage?.image = recieveImage
        }
    
}
    
    

    


