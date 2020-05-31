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
    private var listTable = List(frame: .zero, style: .plain)
    private var layout = UICollectionViewFlowLayout()
    private var gridCollection = Grid(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
    
    private var segmentControl = UISegmentedControl(items: ["List", "Grid"])

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = apiCall.retrieveData()
        self.view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        segmentControl.selectedSegmentIndex = 1
        segmentControl.addTarget(self, action: #selector(chooseSegment), for: .valueChanged)
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: UIScreen.main.bounds.width - 50, height: 500)
        layout.minimumLineSpacing = 15
        listTable.delegate = self as UITableViewDelegate
        gridCollection.delegate = self as UICollectionViewDelegate
        
        self.view.addSubview(listTable)
        self.view.addSubview(gridCollection)
        self.view.addSubview(segmentControl)
        
        setUpConstraint()
        
    }
    
    @objc func chooseSegment() {
        if segmentControl.selectedSegmentIndex == 0 {
            gridCollection.isHidden = true
            listTable.isHidden = false
        } else if segmentControl.selectedSegmentIndex == 1 {
            listTable.isHidden = true
            gridCollection.isHidden = false
        }
    }

    func setUpConstraint() {
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: segmentControl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: segmentControl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: segmentControl, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 25).isActive = true
        NSLayoutConstraint(item: segmentControl, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100).isActive = true
        NSLayoutConstraint(item: segmentControl, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -25).isActive = true
        listTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: listTable, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 500).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 25).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: listTable, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -25).isActive = true
        gridCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: gridCollection, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: UIScreen.main.bounds.width - 50).isActive = true
        NSLayoutConstraint(item: gridCollection, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 500).isActive = true
        NSLayoutConstraint(item: gridCollection, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 25).isActive = true
        NSLayoutConstraint(item: gridCollection, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: gridCollection, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -25).isActive = true
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

