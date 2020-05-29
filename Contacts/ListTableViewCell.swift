//
//  ListTableViewCell.swift
//  Contacts
//
//  Created by ehsan sat on 5/30/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    private var avatarView = UIImageView()
    private var onlineDotView = UIView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
