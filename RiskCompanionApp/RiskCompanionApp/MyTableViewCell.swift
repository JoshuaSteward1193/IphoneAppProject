//
//  MyTableViewCell.swift
//  RiskCompanionApp
//
//  Created by CIS Student on 12/1/17.
//  Copyright © 2017 Joshua Steward. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMain: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
