//
//  TableViewCell.swift
//  Git20230926
//
//  Created by Laszlo Kovacs on 29/09/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var numberField: UILabel!
        
    @IBOutlet weak var firstNameField: UILabel!
   
    @IBOutlet weak var secondNameField: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
