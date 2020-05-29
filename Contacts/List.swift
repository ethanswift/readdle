//
//  List.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class List: UIView {
    
    weak var delegate: UITableViewDelegate?
    
    private var list = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTableView() {
        
    }
    
    func setUpConstraints() {
        
    }
    
}

extension List: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

extension List: UITableViewDelegate {
    
}
