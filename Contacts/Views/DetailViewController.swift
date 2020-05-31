//
//  DetailViewController.swift
//  Contacts
//
//  Created by ehsan sat on 5/31/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = false
        let detailView = Detailed(user: self.user)
        self.view.addSubview(detailView)
        // Do any additional setup after loading the view.
        detailView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: detailView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: detailView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.height - 200).isActive = true
        NSLayoutConstraint(item: detailView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 25).isActive = true
        NSLayoutConstraint(item: detailView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 150).isActive = true
        NSLayoutConstraint(item: detailView, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -25).isActive = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
