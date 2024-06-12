//
//  Calculater.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/7/24.
//

import UIKit

class Calculater: UIViewController {
    
    @IBOutlet weak var valueOfA: UITextField!
    @IBOutlet weak var valueOfB: UITextField!
    @IBOutlet weak var valueOfC: UITextField!
    @IBOutlet weak var resultMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
            view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    // Function to dismiss the keyboard when tapping outside the input fields
    @objc func dismissKeyboard(_ sender:AnyObject){
        view.endEditing(true)
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        // Get the values of A, B, and C from the input fields and convert them to Float
        let a:Float = Float(valueOfA.text ?? "") ?? 0
        let b:Float = Float(valueOfB.text ?? "") ?? 0
        let c:Float = Float(valueOfC.text ?? "") ?? 0

        // Check if the value of A is zero
        if a == 0 {
            resultMsg.text = "The value you entered for A is invalid."
            return
        }
        // Check if the value of B is zero
        if b == 0 {
            resultMsg.text = "The value you entered for B is invalid."
         return
        }
                
        var discriminant :Float
        var x1:Float
        var x2:Float
                
        discriminant = b*b - 4*a*c
        
        // If discriminant is zero, there is only one root

        if(discriminant == 0)
        {
            resultMsg.text = "There is only one value for X: = \(-b/2*a)"
        }
        
        // If discriminant is less than zero, there are no real roots
        else if(discriminant < 0)
        {
            
            resultMsg.text = "There are no results since the discriminant is less than zero."
        }
        else
        {
            // Calculate the roots using the quadratic formula
            x1 = (-b + sqrt(discriminant)) / (2 * a)
            x2 = (-b - sqrt(discriminant)) / (2 * a)
            resultMsg.text = "There are two values for X: \(x1) and \(x2)"
        }
        
    }
    
    // clear the input fields and result message
    @IBAction func clearData(_ sender: UIButton) {
        valueOfA.text = ""
        valueOfB.text = ""
        valueOfC.text = ""
        resultMsg.text = ""
        resultMsg.text = "Enter a value for A, B and C to find X."
    }
    
   

}

