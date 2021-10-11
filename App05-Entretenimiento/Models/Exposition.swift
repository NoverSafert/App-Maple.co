//
//  Media.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//

import SwiftUI

struct Exposition: Identifiable{
    
    var id = UUID()
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
}
