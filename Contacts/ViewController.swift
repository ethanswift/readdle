//
//  ViewController.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var apiCall = API()
    private var listTable = List()
    private var gridCollection = Grid()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        let user = apiCall.retrieveData()
        
        self.view.addSubview(listTable)
//        self.view.addSubview(gridCollection)
        
        
        
    }

    func setUpConstraint() {
        listTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: listTable, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 500).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        listTable.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    }
}

