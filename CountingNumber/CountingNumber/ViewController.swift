//
//  ViewController.swift
//  CountingNumber
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneOutlet: UILabel!
    @IBOutlet weak var twoOutlet: UILabel!
    @IBOutlet weak var threeOutlet: UILabel!
    var subCount = 0
    
    @IBAction func oneBT(sender: AnyObject) {
        subCount = subCount + 1
        oneOutlet.text = "\(subCount)"
    }
    @IBAction func twoBT(sender: AnyObject) {
        subCount = subCount + 2
        twoOutlet.text = "\(subCount)"
    }
    @IBAction func threeBT(sender: AnyObject) {
        subCount = subCount + 3
        threeOutlet.text = "\(subCount)"
    }
    @IBAction func resetBBT(sender: AnyObject) {
        oneOutlet.text = "0"
        twoOutlet.text = "0"
        threeOutlet.text = "0"
        subCount = 0
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

