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
    private var api = API()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        
        avatarView.frame.size = CGSize(width: 50, height: 50)
        avatarView.layer.cornerRadius = avatarView.frame.height / 2
        avatarView.layer.masksToBounds = true
        if api.apiUser != nil {
            avatarView.image = UIImage(contentsOfFile: api.apiUser!.avatar!)
        } else {
            // use the function
        }
        avatarView.contentMode = .scaleAspectFit
        self.addSubview(avatarView)
        onlineDotView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        onlineDotView.layer.masksToBounds = true
        onlineDotView.frame.size = CGSize(width: 6, height: 6)
        onlineDotView.layer.cornerRadius = onlineDotView.frame.size.height / 2
        self.addSubview(onlineDotView)
        
        
    }
    
    func makeConstraints() {
        
    }
}
