//
//  BirthdayViewController.swift
//  Mr.President
//
//  Created by don't touch me on 7/15/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import AVFoundation
    


class BirthdayViewController: UIViewController {
    
    
    @IBOutlet weak var animateView: UIImageView!
    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet var birthdayImage: UIImageView!
    
    var thePhoto: UIImage?
    var selectedBackGroundImage: UIImage?
    var backGroundPlayer: AVAudioPlayer?
    var timer: NSTimer?
    

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        var imagesArray = [UIImage]()
        
        
        
        for i in 1...5 {
            if let image = UIImage(named: "\(i)jfk") {
                imagesArray.append(image)
                print("jfk_\(i)")
            }
        }
        
        animateView.animationImages = imagesArray
        animateView.animationDuration = 2.0
        animateView.animationRepeatCount = 0
        animateView.startAnimating()
        
        if let theImage = self.thePhoto {
            self.happyImage.image = theImage
        }
        
        if let theImage = self.selectedBackGroundImage {
            self.birthdayImage.image = theImage
        }
        
        self.backGroundPlayer = self.getAudioPlayer("mmHbMrPresident", fileExt: "mp3")
        self.backGroundPlayer?.play()
        
        
        
//        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(moveCoin), userInfo: nil, repeats: true)
        
    }
    
    func getAudioPlayer(filename: String, fileExt: String) -> AVAudioPlayer? {
        var audioPlayer: AVAudioPlayer?
        
        if let filePath = NSBundle.mainBundle().URLForResource(filename, withExtension: fileExt) {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: filePath)
                
                audioPlayer?.volume = 1.0
                audioPlayer?.prepareToPlay()
                
            } catch {
                print("an error occured")
            }
        
        } else {
            print("I cant find the file")
        }
        return audioPlayer
    }
    
//    func moveCoin() {
//        
//        let width = self.view.frame.size.width * 0.9
//        let height = self.view.frame.size.height * 0.9
//        
//        
//        let xCoordinate : CGFloat = CGFloat(arc4random_uniform(UInt32(width)))
//        let yCoordinate : CGFloat = CGFloat(arc4random_uniform(UInt32(height)))
//        
//        UIView.animateWithDuration(2.0) {
//            
//            self.animateView.center = CGPoint(x: xCoordinate, y: yCoordinate)
//            
//            UIView.animateWithDuration(2.0, animations: {
//                self.animateView.center = CGPoint(x: 0, y: 0)
//            })
//        }
//        
//        
//        
//    }


    
}
