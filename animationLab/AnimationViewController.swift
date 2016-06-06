//
//  AnimationViewController.swift
//  animationLab
//
//  Created by Kunal Desai on 6/2/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var trayView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        trayView.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goButton3(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3) {
            
            self.trayView.center.x += -320
            self.trayView.backgroundColor = UIColor.greenColor()
        }
        
    }
    
    
    
    
    @IBAction func onGoButton(sender: AnyObject) {
        UIView.animateWithDuration(0.3) {
        self.imageView.center.y += 300
        self.imageView.transform = CGAffineTransformMakeScale(3, 3)
        self.view.backgroundColor = UIColor.redColor()
        }
    }
    
    
    @IBAction func onGoButton2(sender: AnyObject) {
        

        UIView.animateWithDuration(0.3, animations: {
            
            self.imageView.center.y += 300
            self.imageView.transform = CGAffineTransformMakeScale(3, 3)
            self.view.backgroundColor = UIColor.redColor()
            
            }) { (Bool) in
                
           //     let scaleTransform = CGAffineTransformMakeScale(3, 3)
                
                UIView.animateWithDuration(0.2) {
                    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, 20 * CGFloat(M_PI) / 180)
                    
                    }
        
                
           //     self.imageView.transform = CGAffineTransformMakeRotation(20 * CGFloat(M_PI) / 180)
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
