//
//  carSearch.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/12/24.
//

import UIKit

class carSearch: UIViewController {

// Connects the UI elements from the storyboard to the code
 @IBOutlet weak var carTitle: UILabel!
 @IBOutlet weak var carImage: UIImageView!
 @IBOutlet weak var carSearch: UITextField!
 @IBOutlet weak var carList: UIButton!
 @IBOutlet weak var messageLabel: UILabel!
 
// Defines a struct to hold car information (name and image)
 struct Car {
     let name: String
     let image: String
 }
 
// Array of Car structs
 let cars = [
         Car(name: "BMW", image: "BMW.jpeg"),
         Car(name: "Ford", image: "Ford.jpeg"),
         Car(name: "GMC", image: "GMC.jpeg"),
         Car(name: "Honda", image: "Honda.jpeg"),
         Car(name: "Jeep", image: "JEEP.jpeg"),
         Car(name: "Volvo", image: "Volvo.jpeg"),
 ]

 override func viewDidLoad() {
     super.viewDidLoad()
     
     // Sets the Default text and image for the carTitle and carImage
     carTitle.text = "Cars"
     carImage.image = UIImage(named: "canada.png")
 }

 
 @IBAction func searchCars(_ sender: UIButton) {
     
     // Trim whitespaces and newlines from the search text

     guard let searchText = carSearch.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
                 return
         }
        
     // Find the first car in the array whose name matches the search text
     if let car = cars.first(where: { $0.name.lowercased() == searchText.lowercased() }) {
         
         // If a matching car is found,then update the carTitle and carImage with the car's name and image
             carTitle.text = car.name
             carImage.image = UIImage(named: car.image)
             messageLabel.text = ""
     }
     else
     {
         // If no matching car is found
         carTitle.text = ""
         carImage.image = nil
         messageLabel.text = "Car not found"
     }
 }
 
 

}
