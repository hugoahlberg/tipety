//
//  ViewController.swift
//  Tipety
//
//  Created by Hugo Ahlberg on 12/31/14.
//  Copyright (c) 2014 Hugo Ahlberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func editingActive(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipSelected = tipPercentages [tipControl.selectedSegmentIndex]
        
        
    //   var billAmount = billField.text.Float(true)
    //var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipSelected
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}


