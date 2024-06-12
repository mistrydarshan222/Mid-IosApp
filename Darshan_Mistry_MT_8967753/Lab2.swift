//
//  Lab2.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/8/24.
//

import UIKit

class Lab2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
    var count = 0
    var step = 1
    
    
    @IBOutlet weak var counter: UITextField!
    
    @IBOutlet weak var stepper: UIButton!
    
    @IBAction func Increamentvalue(_ sender: Any) {
        count = count + step
        counter.text = String(count)
    }
    
    @IBAction func Decreamentvalu(_ sender: Any) {
        count = count - step
        counter.text = String(count)
    }
       
    
    @IBAction func Reset(_ sender: UIButton) {
        count = 0
        step = 1
        counter.text = String(count)
        stepper.setTitle("Set Step = 2",for: .normal)
    }
    
    
    @IBAction func StepButton(_ sender: UIButton) {
        
        if step == 1
        {
            step = 2
            sender.setTitle("Set Step = 1",for: .normal)
        }
        else
        {
            step = 1
            sender.setTitle("Set Step = 2",for: .normal)
        }
        counter.text = String(count)
    }

}
