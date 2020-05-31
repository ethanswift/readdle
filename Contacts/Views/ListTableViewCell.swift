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
    private var nameLbl = UILabel()
    private var api = API()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        // Initialization code
        contentView.frame.size = CGSize(width: UIScreen.main.bounds.width, height: 50)
        avatarView.frame.size = CGSize(width: 50, height: 50)
        avatarView.layer.masksToBounds = true
        avatarView.layer.cornerRadius = avatarView.frame.height / 2
        if api.apiUser != nil {
            avatarView.image = UIImage(contentsOfFile: api.apiUser!.avatar!)
        } else {
            self.avatarView.image = #imageLiteral(resourceName: "323a3484421525602cd8e437ddb3f4ee")
        }
        avatarView.contentMode = .scaleAspectFit
        self.addSubview(avatarView)
        onlineDotView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        onlineDotView.layer.masksToBounds = true
        onlineDotView.frame.size = CGSize(width: 8, height: 8)
        onlineDotView.layer.cornerRadius = onlineDotView.frame.size.height / 2
        self.addSubview(onlineDotView)
        nameLbl.text = "Beau Lebens"
        nameLbl.font = UIFont.systemFont(ofSize: 16)
        self.addSubview(nameLbl)
        setUpConstraints()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpConstraints() {
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: self.contentView, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .bottom, relatedBy: .equal, toItem: self.contentView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        onlineDotView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: onlineDotView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 42.677).isActive = true
        NSLayoutConstraint(item: onlineDotView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 42.677).isActive = true
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLbl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 70).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 10).isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
