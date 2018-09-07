//
//  ProductCollection.swift
//  E-Commerces
//
//  Created by shailesh on 10/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class ProductCollection: UICollectionView,UICollectionViewDataSource, UICollectionViewDelegate {
    
    var products = [Product](){
        didSet{
            reloadData()
        }
    }
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PRODUCT_CELL, for: indexPath) as! ProductCell
        cell.populateCell(product: products[indexPath.row])
        return cell
    }
    

}
