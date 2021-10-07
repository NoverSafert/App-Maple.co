//
//  UserModel.swift
//  App05-Entretenimiento
//
//  Created by Team 4 on 10/3/21.
//

import Foundation


struct UserResponse : Codable {
    var users : [UserModel]
}

struct UserModel : Codable, Identifiable{
    var id : String
    var username : String
    var password : String
    var usertype: [String]
    
    enum CodingKeys : String, CodingKey{
        case id = "_id"
        case username = "username"
        case password = "password"
        case usertype = "usertype"
    }
}
