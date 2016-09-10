//
//  ViewController.swift
//  amgerGame
//
//  Created by Amanda Southworth on 6/12/16.
//  Copyright © 2016 Amanda Southworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var burstView: UIView!
    
    @IBOutlet weak var anger1: UILabel!
    @IBOutlet weak var anger2: UILabel!
    
    @IBOutlet weak var angerButton: UIButton!
    
    
    
    var tapCounter: Float = 0
    
    func respondToTap() {
        
    
    tapCounter += 1
    
    burstView.frame.size.width = burstView.frame.size.height
    
    burstView.frame.size.height = burstView.frame.size.width
        
        UIView.animateWithDuration(0.01, animations: {
        
        self.burstView.center.x = self.view.frame.size.width / 2
            
        self.burstView.center.y = self.view.frame.size.height / 2
        
        self.burstView.frame.size.width = self.burstView.frame.size.width * 1.02
        
        self.burstView.frame.size.height = self.burstView.frame.size.height * 1.02
            
        self.burstView.layer.cornerRadius = self.burstView.frame.size.width / 2
            
        })
        
        print(tapCounter)
        if tapCounter >= 228 {
        
            UIView.animateWithDuration(1.0, animations: {
            
                self.burstView.backgroundColor = UIColor.blackColor()
            
            })
            
            UIView.animateWithDuration(5.0, animations: {
            
            self.anger1.alpha = 1.0
            self.anger2.alpha = 1.0
            
            })
            
            UIView.animateWithDuration(7.0, animations: {
            
                self.angerButton.alpha = 1.0
            
            })
        }
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.burstView.layer.cornerRadius = self.burstView.frame.size.width / 2
       
        let bubbleTap = UITapGestureRecognizer()
        bubbleTap.addTarget(self, action: #selector(ViewController.respondToTap))
        
        self.view.addGestureRecognizer(bubbleTap)
        
        anger1.alpha = 0.0
        anger2.alpha = 0.0
        angerButton.alpha = 0.0
        
    }

    override func viewDidAppear(animated: Bool) {
        //set up animation, counter, UITapGesture
        
        self.burstView.layer.cornerRadius = self.burstView.frame.size.width / 2
        
        self.burstView.center.x = self.view.frame.size.width / 2
        
        self.burstView.center.y = self.view.frame.size.height / 2
    }

}

