//
//  UVITableViewCell.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/8/29.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//

import UIKit

class UVITableViewCell: UITableViewCell {

    @IBOutlet weak var contyLable: UILabel!
    @IBOutlet weak var uviLabel: UILabel!
    @IBOutlet weak var publishAgencyLabel: UILabel!
    @IBOutlet weak var publishTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
