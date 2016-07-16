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
    
    
    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet var birthdayImage: UIImageView!
    
    var thePhoto: UIImage?
    var selectedBackGroundImage: UIImage?
    var backGroundPlayer: AVAudioPlayer?
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let theImage = self.thePhoto {
            self.happyImage.image = theImage
        }
        
        if let theImage = self.selectedBackGroundImage {
            self.birthdayImage.image = theImage
        }
    }
        override func viewDidLoad() {
            super.viewDidLoad()
    
            self.backGroundPlayer = self.getAudioPlayer("mmHbMrPresident", fileExt: "mp3")
            self.backGroundPlayer?.play()

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
    
    @IBAction func playButtonTapped(sender: UIBarButtonItem) {
        print("playTapped")
        
        self.backGroundPlayer?.play()
        
    }
    
    @IBAction func pauseButtonTapped(sender: UIBarButtonItem) {
        print("pauseTapped")
        
        self.backGroundPlayer?.pause()
        
    }
    
    
    

    
    
    
}
