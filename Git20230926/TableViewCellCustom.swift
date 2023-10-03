//
//  TableViewCellCustom.swift
//  Git20230926
//
//  Created by Laszlo Kovacs on 03/10/2023.
//

import UIKit

class TableViewCellCustom: UITableViewCell {

    @IBOutlet weak var customTextField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
