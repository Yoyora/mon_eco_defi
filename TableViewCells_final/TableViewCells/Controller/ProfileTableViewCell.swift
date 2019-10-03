//
//  ProfileTableViewCell.swift
//  TableViewCells
//
//  Created by shelley cavaness on 01/10/2019.
//  Copyright © 2019 Alexandre Bloch. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
//let users: [String] = ["Wendy", "Alice", "Gaby", "Yamina", "Jill"]
    
    @IBOutlet weak var scoreLable: UIView!
    
    @IBOutlet weak var myTeam: UILabel!
    
    @IBOutlet weak var myTown: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
