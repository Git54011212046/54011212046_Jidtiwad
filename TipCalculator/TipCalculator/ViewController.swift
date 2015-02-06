//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalTexField: UITextField!
    @IBOutlet weak var taxtPctLabel: UILabel!
    @IBOutlet weak var taxtPctSlider: UISlider!
    @IBOutlet weak var resultsTextView: UITextView!
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refreshUI() {
        totalTexField.text = String(format: "%0.2f", tipCalc.total)
        taxtPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxtPctLabel.text = "Tax Percentage (\(Int(taxtPctSlider.value))%)"
        resultsTextView.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTexField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for (tipPct, tipValue) in possibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxtPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        totalTexField.resignFirstResponder()
    }
    
    

}

