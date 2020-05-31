//
//  BottomBtn.swift
//  Contacts
//
//  Created by ehsan sat on 6/1/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class BottomBtn: UIButton {
    
    private var btnPressed: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUp() {
        self.setTitle("Simulate Changes", for: .normal)
        self.setTitleColor(.blue, for: .normal)
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.blue.cgColor
        self.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
    }
    @objc func btnClicked() {
        btnPressed.toggle()
        if btnPressed {
            self.setTitleColor(.white, for: .normal)
            self.backgroundColor = .blue
        } else {
            self.setTitleColor(.blue, for: .normal)
            self.backgroundColor = .white
        }
    }
}
