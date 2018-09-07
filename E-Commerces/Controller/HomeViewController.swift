//
//  HomeViewController.swift
//  E-Commerces
//
//  Created by shailesh on 10/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
 
    @IBOutlet var homeTable: HomeTableView!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        let = APIManagar.api.fetchData()
        respoce.done{
            catgory in
            self.homeTable.categorys = catgory
            }
     }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


