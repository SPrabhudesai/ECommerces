//
//  Model.swift
//  SampleAPI
//
//  Created by shailesh on 23/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import Foundation


struct CategoryResponce:Decodable{
    var categories = [ProductCategory]()
    
    
    private struct CodingKeys:CodingKey{
        var intValue: Int?
        var stringValue: String
        init?(intValue: Int) {
            self.intValue = intValue; self.stringValue = ""
            
        }
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        for key in container.allKeys{
            var catogory = try container.decode(ProductCategory.self, forKey: key)
            catogory.categoryName = key.stringValue
            categories.append(catogory)
        }
    }
}

struct ProductCategory: Decodable {
    var categoryName = String()
    var products:[Product]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.products = try container.decode([Product].self)
    }
}

struct Product: Decodable {
    var name:String
    var price:String
    var real_price:String
    var img:URL
}
