//
//  Media.swift
//  App04-Peliculas
//
//  Created by Elvia Rosas on 16/03/21.
//

import SwiftUI

struct Media1: Identifiable{
    
    var id = UUID()
    var sName: String
    var iYear: Int
    var sHeadline: String
    var sOverview: String
    var arrImages: [String]
    var show : Bool
}

