//
//  ViewController.swift
//  animationFish
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
  
    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        for i in 0...5 {
            
            
            let randomOffset = CGFloat(arc4random_uniform(150))
            let path = UIBezierPath()
            let fish = UIImageView()
            let fishRandom = Int(arc4random_uniform(5)+1)
            
            fish.image = UIImage(named: "Tropical_Fish_\(fishRandom)_by_it_s.png")
            fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
            self.view.addSubview(fish)
            
            path.moveToPoint(CGPoint(x: 16, y: 239 + randomOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomOffset))
            
            let anim = CAKeyframeAnimation(keyPath: "position")
            
            anim.path = path.CGPath
            
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = Double(arc4random_uniform(40)+30) / 10
            anim.timeOffset = Double(arc4random_uniform(10000))
            
            fish.layer.addAnimation(anim, forKey: "animate position along path")}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"1123399__koral_p.jpg"]];
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1123399__koral_p.jpg"))
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

