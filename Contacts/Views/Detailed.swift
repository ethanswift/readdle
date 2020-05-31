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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        
    }
    
}
