//
//  TableViewCell.swift
//  MTS Prototype
//
//  Created by Александр Шишкин on 12/01/2017.
//  Copyright © 2017 Александр Шишкин. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var prototypeNameLabel: UILabel!
    
    @IBOutlet weak var bandConfigurationLabel: UILabel!
    
    @IBOutlet weak var antennaLenghtLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
