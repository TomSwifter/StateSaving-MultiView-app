//
//  TableViewCell.swift
//  loginApp
//
//  Created by Tomer Aharoni on 3/2/18.
//  Copyright © 2018 Tomer Aharoni. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    var username = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print(username)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
