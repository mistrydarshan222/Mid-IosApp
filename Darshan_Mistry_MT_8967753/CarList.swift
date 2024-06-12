//
//  CarList.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/6/24.
//

import UIKit



class CarList: UITableViewController {

    // Array of car names
    var cars: [String] = ["BMW", "Ford", "GMC", "Honda","Jeep", "Volvo"]
    
    // Array of car images
    var carImages = [ UIImage (named: "BMW.jpeg"),
                       UIImage (named: "Ford.jpeg"),
                       UIImage (named: "GMC.jpeg"),
                       UIImage (named: "Honda.jpeg"),
                       UIImage (named: "JEEP.jpeg"),
                       UIImage (named: "Volvo.jpeg"),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return cars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell for each row in the table view
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as! Carlistcells
        
        cell.carName.text = cars[indexPath.row]
        cell.carImage.image = carImages[indexPath.row]
        
        // Set background color and text color based on row number
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.white
            cell.carName.textColor = UIColor.black
        }
        else {
            cell.backgroundColor = UIColor(red: 173/255, green: 216/255, blue: 230/255, alpha: 1.0) // Light blue
            cell.carName.textColor = UIColor.white
        }
        
        return cell
    }

    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

}
