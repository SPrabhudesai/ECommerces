//
//  HomeTableView.swift
//  E-Commerces
//
//  Created by shailesh on 23/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class HomeTableView: UITableView,UITableViewDelegate, UITableViewDataSource {
    var categorys = [ProductCategory](){
        didSet{
            reloadData()
        }
    }

    //Enum for CellTag
    enum CellTag:Int{
        case row0 = 0
        case row1
        case row2
        
        
    }

    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorys.count+1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case CellTag.row0.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: FEATURE_CELL) as! FeatureCell
            
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: CATEGORY_CELL) as! CategoryCell
            cell.populateCell(category: categorys[indexPath.row-1])
            return cell
        }
    }
}
