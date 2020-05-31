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
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp () {
        avatarView.frame.size = CGSize(width: 50, height: 50)
        avatarView.layer.cornerRadius = avatarView.frame.height / 2
        avatarView.layer.masksToBounds = true
        avatarView.image = #imageLiteral(resourceName: "323a3484421525602cd8e437ddb3f4ee")
        avatarView.contentMode = .scaleAspectFit
        self.addSubview(avatarView)
        onlineDotView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        onlineDotView.layer.masksToBounds = true
        onlineDotView.frame.size = CGSize(width: 10, height: 10)
        onlineDotView.layer.cornerRadius = onlineDotView.frame.size.height / 2
        self.addSubview(onlineDotView)
        makeConstraints()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func makeConstraints() {
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0).isActive = true
        onlineDotView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: onlineDotView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 42.677).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 42.677).isActive = true
    }
}
