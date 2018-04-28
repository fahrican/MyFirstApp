//
//  ViewController.swift
//  MyFirstApp
//
//  Created by fahri on 19.03.18.
//  Copyright © 2018 fahri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    @IBOutlet weak var toggle: UISegmentedControl!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var firstNum: UILabel!
    
    @IBOutlet weak var secondNum: UILabel!
    
    @IBOutlet weak var solution: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
     
        let firstVal: Int = Int(firstField.text!)!
        let secondVal: Int = Int(secondField.text!)!
        var result = 0
        
        firstNum.text = String(firstVal)
        secondNum.text = String(secondVal)
        
        if toggle.selectedSegmentIndex == 0{
                result = firstVal + secondVal
                solution.text = String(result)
        }
        else {
            let result = firstVal - secondVal
            solution.text = String(result)
        }
        
        self.progressBar.progress = Float(result) / 100.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstField.delegate = self
        secondField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}

