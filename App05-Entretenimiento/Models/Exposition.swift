//
//  Media.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//

import SwiftUI

struct Exposition: Identifiable, Encodable, Decodable{
    
    var id = String
    var sName: String
    var sDescription: String
    var sCuraduria: String // Autor
    var sMuseografia: String
    var sSalas: String
    var sTecnicas: String
    var sObras: String
    var arrImages: [String]
    var boolVideo: Bool
    var sVideo: String
    var boolRecorrido: Bool
    var sRecorrido: String
    var isMarcolection: Bool
    var colection: MarColection

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case sName = "name"
        case sDescription = "description"
        case sCuraduria = "autor" // Autor
        case sMuseografia =  "museography"
        case sSalas =  "rooms"
        case sTecnicas = "techniques"
        case sObras = "pieces"
        case arrImages =  ["images"]
        case boolVideo = "hasVideo"
        case sVideo = "video"
        case boolRecorrido = "hasTour"
        case sRecorrido = "tour"
        case isMarcolection = 
        case colection = 
    }
}

