//
//  ViewController.swift
//  animationSlider
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    @IBAction func animateButtonProcess(sender: AnyObject) {
        let numberOfFish = Int(self.numberOfFishSlider.value * 10)
        
        for loopNumber in 0...numberOfFish {
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(400))+20
            //let coloredSequare = UIView()
            
            //coloredSequare.backgroundColor = UIColor.blueColor()
            
            //coloredSequare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
           // coloredSequare.frame = CGRectMake(0, yPosition, size, size)
           // self.view.addSubview(coloredSequare)
            let fish = UIImageView()
            fish.image = UIImage(named: "Tropical_Fish_1_by_it_s")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            let duration = Double( arc4random_uniform(3))+1
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            let options = UIViewAnimationOptions.CurveLinear
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
               // coloredSequare.backgroundColor = UIColor.redColor()
               //
                //coloredSequare.frame = CGRectMake(320-size, yPosition, size, size)
                fish.frame = CGRectMake(360, yPosition, size, size)
                }, completion: {
                    animationFinished in
                    fish.removeFromSuperview()
                    //coloredSequare.removeFromSuperview()
            })
            
            /*UIView.animateWithDuration(1.0, animations: {
            coloredSequare.backgroundColor = UIColor.redColor()
            coloredSequare.frame = CGRect(x: 320, y: 120, width: 50, height: 50)})*/
            /*UIView.animateWithDuration(1.0, animations: {
            coloredSequare.backgroundColor = UIColor.redColor()
            coloredSequare.frame = CGRect(x: 320, y: 120, width: 50, height: 50)
            }, completion: { animationFinished in
            coloredSequare.removeFromSuperview()
            })*/
}
        
        
        
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

