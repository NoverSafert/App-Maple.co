//
//  MarColection.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 10/7/21.
//

import Foundation

struct MarColectionResponse : Codable {
    var expositions : [MarColection]
}

struct MarColection: Identifiable, Encodable, Decodable{
    var id: String
    var name: String
    var images: [String]
    var autor: String
    var sizes: String
    var technique: String
    var year: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case images
        case autor
        case sizes
        case technique
        case year
    }
}
