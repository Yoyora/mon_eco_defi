//
//  ActionsTableViewCell.swift
//  TableViewCells
//
//  Created by Roots on 27/09/2019.
//  Copyright © 2019 Roots. All rights reserved.
//

import UIKit

class ActionsTableViewCell: UITableViewCell {

    @IBOutlet weak var actionImage: UIImageView!
    @IBOutlet weak var actionDescriptionLabel: UILabel!
    @IBOutlet weak var actionTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }

}
