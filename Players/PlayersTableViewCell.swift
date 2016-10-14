//
//  PlayersTableViewCell.swift
//  Players
//
//  Created by Bas Generowicz on 14/10/16.
//  Copyright © 2016 Bas Generowicz. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var hcpField: UITextField!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
