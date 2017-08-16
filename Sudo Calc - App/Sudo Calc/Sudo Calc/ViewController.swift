//
//  ViewController.swift
//  Sudo Calc
//
//  Created by Pranav Ramesh on 8/9/17.
//  Copyright © 2017 Laphatize. All rights reserved.
//
//

import UIKit
import Foundation
class ViewController: UIViewController {
var Date = NSDate()
@IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    print("Button Pressed @ ", Date)
    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text)!
     
    
    }
   
    

    @IBAction func calculate(_ sender: UIButton) {
        let stringExpression = resultLabel.text!
        let expression = NSExpression(format: stringExpression)
        let result = expression.expressionValue(with: nil, context: nil) as! NSNumber
        resultLabel.text! = String(result.doubleValue)

        
        
    }

    @IBAction func clearAll(_ sender: Any) {
        resultLabel.text = ""
    }
    
    
    }
