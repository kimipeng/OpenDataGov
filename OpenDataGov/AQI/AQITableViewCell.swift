//
//  AUITableViewCell.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/9/13.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//

import UIKit

class AQITableViewCell: UITableViewCell {

    @IBOutlet weak var County: UILabel!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var AQILabel: UILabel!
    @IBOutlet weak var PublishTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
