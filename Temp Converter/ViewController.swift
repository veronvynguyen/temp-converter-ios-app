//
//  ViewController.swift
//  Temp Converter
//
//  Created by Vy Nguyen on 7/31/17.
//  Copyright © 2017 Vy Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var entryTempTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var buttonClickLabel: UILabel!
    var count: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func convertButtonClicked(_ sender: UIButton) {
        if let result = entryTempTextField.text {
            if (result == "") {
                return
            }
            else {
                if let num = Double(result) {
                    let answer = calcAnswer(num: num)
                    answerLabel.text = String(answer)
                    updateCount()
                }
            }
        }
    }
    
    func updateCount ()  {
        count += 1
        buttonClickLabel.text = String(count) + " conversions"
    }
    
    func calcAnswer (num: Double) -> Double {
        return num * (9/5) + 32
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

