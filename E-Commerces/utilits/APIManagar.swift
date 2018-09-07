//
//  APIManagar.swift
//  SampleAPI
//
//  Created by shailesh on 22/08/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit


class APIManagar{
    
    static let api = APIManagar()
    private init(){}
    func fetchData() -> Promise<[ProductCategory]>{
        return Promise{
            resolver in
            
            Alamofire.request("http://demo8950097.mockable.io/hello").responseString(){
                responce in
                switch(responce.result){
                    
                case.success(let data):
                    if let json = data.data(using: .utf8){
                        do{
                        let categoryRes = try JSONDecoder().decode(CategoryResponce.self, from: json)
                            resolver.fulfill((categoryRes.categories))
                        }catch{
                            print(error.localizedDescription)
                        }

                    }
                
                    //print("My API Responce:-", data)
                    
                case .failure(let error):
                    resolver.reject(error)
                    print(error)
                }
            }
        }
        
 
        
     }
    
}
