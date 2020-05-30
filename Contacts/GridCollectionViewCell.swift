//
//  GridCollectionViewCell.swift
//  Contacts
//
//  Created by ehsan sat on 5/30/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {
    
    private var avatarView = UIImageView()
    private var onlineDotView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        
    }
    
    
}
