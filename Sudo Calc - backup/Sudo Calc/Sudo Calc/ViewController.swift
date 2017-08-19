//
//  ViewController.swift
//  Sudo Calc
//
//  Created by Pranav Ramesh on 8/9/17.
//  Copyright © 2017 Laphatize. All rights reserved.
//

/* Import UIKit + Foundation */
  import UIKit
  import Foundation


class ViewController: UIViewController {

    var Date = NSDate() // Gets the date.

    // Define resultlabel
@IBOutlet weak var resultLabel: UILabel!

        // Check if loaded??
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Notify user when low memory???
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
                                // Write down the number being pressed in console and in text/output box.
                @IBAction func buttonPressed(_ sender: UIButton) {
                    print("Button Pressed @ ", Date)
                        resultLabel.text = resultLabel.text! + (sender.titleLabel?.text)!
     
                        }
   
    
                        // Calculate when "=" button pressed
            @IBAction func calculate(_ sender: UIButton) {
                let stringExpression = resultLabel.text!
                    let expression = NSExpression(format: stringExpression)
                        let result = expression.expressionValue(with: nil, context: nil) as! NSNumber
                            resultLabel.text! = String(result.doubleValue)
                
                                }
        
                        // Clear when "C" button pressed
            @IBAction func clearAll(_ sender: Any) {
                resultLabel.text = ""
                
                                }
                                 }


