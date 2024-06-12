//
//  Lab3.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/8/24.
//

import UIKit

class Lab3: UIViewController {

    @IBOutlet weak var firstName: UITextField!

    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var countryName: UITextField!
    
    @IBOutlet weak var ageNumber: UITextField!
    
    @IBOutlet weak var displayData: UITextView!
    
    @IBOutlet weak var hiddenMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    func addData() {
        let firstNameText = firstName.text ?? ""
        let lastNameText = lastName.text ?? ""
        let countryText = countryName.text ?? ""
        let ageText = ageNumber.text ?? ""

        displayData.text = "Full Name: \(firstNameText) \(lastNameText)\n"
        displayData.text += "Country: \(countryText)\n"
        displayData.text += "Age: \(ageText)"
    }
    
    @IBAction func addData(_ sender: Any) {
       addData()
    }
    
    
    func validateInput() -> Bool {
            let isFirstNameEmpty = firstName.text?.isEmpty ?? true
            let isLastNameEmpty = lastName.text?.isEmpty ?? true
            let isCountryEmpty = countryName.text?.isEmpty ?? true
            let isAgeEmpty = ageNumber.text?.isEmpty ?? true

            return !isFirstNameEmpty && !isLastNameEmpty && !isCountryEmpty && !isAgeEmpty
        }
    
    @IBAction func submitData(_ sender: Any) {
        
        if validateInput() {
            addData()
            hiddenMessage.text = "Successfully Submitted!"
            hiddenMessage.textColor = UIColor.white
            hiddenMessage.backgroundColor = UIColor.green
        }
        else {
            hiddenMessage.text = "Complete the missing information!"
            hiddenMessage.backgroundColor = UIColor.red
            hiddenMessage.textColor = UIColor.white
        }
        hiddenMessage.isHidden = false
    }
       
    
    @IBAction func clearData(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        ageNumber.text = ""
        displayData.text = ""
        hiddenMessage.isHidden = true
    }

}
