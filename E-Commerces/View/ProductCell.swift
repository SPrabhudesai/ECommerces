//
//  ProductCell.swift
//  E-Commerces
//
//  Created by shailesh on 10/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit
import AlamofireImage

class ProductCell: UICollectionViewCell {
    @IBOutlet var productImg: UIImageView!
    
    @IBOutlet var productName: UILabel!
    @IBOutlet var productPrice: UILabel!
    @IBOutlet var productActualPrice: UILabel!
    
    
    
    func populateCell(product:Product){
        productName.text = product.name
        productPrice.text = product.price
        productActualPrice.text = product.real_price
        let loder = UIImage(named: "loader")
        productImg.af_setImage(withURL: product.img, placeholderImage:loder)
        
    }
    
}
