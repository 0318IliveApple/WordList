//
//  LietTableViewCell.swift
//  WordList
//
//  Created by 中嶋裕也 on 2018/04/12.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class LietTableViewCell: UITableViewCell {
    
    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
