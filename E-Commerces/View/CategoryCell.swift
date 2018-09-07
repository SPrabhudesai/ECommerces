//
//  CategoryCell.swift
//  E-Commerces
//
//  Created by shailesh on 10/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet var productList: ProductCollection!
    
    @IBOutlet var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func populateCell(category:ProductCategory){
        categoryName.text = category.categoryName
        productList.products = category.products
    }
    

}
