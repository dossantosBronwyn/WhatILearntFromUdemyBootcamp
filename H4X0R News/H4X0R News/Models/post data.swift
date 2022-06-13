//
//  post data.swift
//  H4X0R News
//
//  Created by IACD-05 on 2022/06/13.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
