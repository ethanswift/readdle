//
//  Grid.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class Grid: UICollectionView {
    
    private var users = MockUser()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setUpCollectionView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        self.backgroundColor = .white
        self.dataSource = self
        self.delegate = self
        self.register(GridCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }

}

extension Grid: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let mockUsers = users.generateMockUser()
        return mockUsers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! GridCollectionViewCell
        
        return cell
    }
    
}

extension Grid: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { 
    }
    
}

