//
//  Media.swift
//  App04-Peliculas
//
//  Created by Elvia Rosas on 16/03/21.
//

import SwiftUI

struct Media: Identifiable{
    
    var id = UUID()
    var sName: String
    var sDescription: String
    var sCuraduria: String
    var sMuseografia: String
    var sSalas: String
    var sTecnicas: String
    var sObras: String
    var arrImages: [String]
    var boolVideo: Bool
    var sVideo: String
    var boolRecorrido: Bool
    var sRecorrido: String
    
}

