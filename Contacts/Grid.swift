//
//  Grid.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class Grid: UIView {
    
    weak var delegate : UICollectionViewDelegate?
    
    private var grid = UICollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCollectionView() {
        
    }
    
    func setUpConstraints() {
        
    }
}

extension Grid: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

extension Grid: UICollectionViewDelegate {
    
}

