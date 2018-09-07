 
 
 
 import Foundation
 struct CategoryResponce:Codable{
    let categorys:[ProductCategory]?
    
 }
 
 
 
 struct ProductCategory : Codable {
    
    let categoryName = String()
    let product:[Product]?
    
    
    
    
 }

 struct Product : Codable {
    
    let img : String?
    let name : String?
    let price : String?
    let realPrice : String?
    
    
    
    
 }
