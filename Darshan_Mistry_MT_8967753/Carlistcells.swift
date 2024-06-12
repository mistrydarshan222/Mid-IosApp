//
//  Carlistcells.swift
//  Darshan_Mistry_MT_8967753
//
//  Created by user236106 on 3/6/24.
//

import UIKit

class Carlistcells: UITableViewCell {
    
    
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var carName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
