//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by David  on 1/21/17.
//  Copyright © 2017 David . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // SAMPLE
    var greetings: String?

    // MARK: IBOutlets
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    // MARK: IBAction
    @IBAction func CalculateButton(_ sender: UIButton)
    {
        if let price = priceTextField.text, price != "" {
        //Swift assumes this as a Double.
        //Explicit type assumption.
        //Double is capital always.
        var total: Double = 0.0
        
        //Switch statemend int Xcode,Swift
        switch segmentedController.selectedSegmentIndex {
            
            //Swift has this option where you can use !.
            //The ! does forceful unwrapping of the type 
            //from string to double type.
        case 0:
            //Tip is 0%.
            total = Double(price)! * 0.00
        case 1:
            //Tip is 5%.
            total = Double(price)! * 0.05
        case 2:
            //Tip is 10%.
            total = Double(price)! * 0.10
        case 3:
            //Tip is 15%.
            total = Double(price)! * 0.15
        case 4:
            //Tip is 20%.
            total = Double(price)! * 0.20
        default:
            print("Yikes")
        }
        //Converts the double value into string and pop ups in the string label.
        
        
        totalLabel.text = String(total)
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

