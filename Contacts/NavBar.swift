//
//  NavigationController.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class NavBar: UINavigationController {
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: HomeViewController())
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp () {
    }
}
