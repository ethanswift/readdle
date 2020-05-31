//
//  Detailed.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class Detailed: UIView {
    private var avatarView = UIImageView()
    private var emailLbl = UILabel()
    private var nameLbl = UILabel()
    var user = User()
    
    init(user: User) {
        self.user = user
        super.init(frame: .zero)
        setUp(user: user)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(user: User) {
        avatarView.frame.size = CGSize(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.width - 50)
        avatarView.layer.cornerRadius = avatarView.frame.height / 2
        avatarView.layer.masksToBounds = true
        avatarView.image = #imageLiteral(resourceName: "323a3484421525602cd8e437ddb3f4ee")
        avatarView.contentMode = .scaleAspectFit
        self.addSubview(avatarView)
        nameLbl.text = self.user.name
        nameLbl.textAlignment = .center
        nameLbl.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(nameLbl)
        emailLbl.text = self.user.email
        emailLbl.textAlignment = .center
        emailLbl.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(emailLbl)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: avatarView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 0).isActive = true
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLbl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 100).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: nameLbl, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .bottom, multiplier: 1, constant: 30).isActive = true
        emailLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: emailLbl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 100).isActive = true
        NSLayoutConstraint(item: emailLbl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: emailLbl, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: emailLbl, attribute: .top, relatedBy: .equal, toItem: nameLbl, attribute: .bottom, multiplier: 1, constant: 30).isActive = true
    }
    
}
