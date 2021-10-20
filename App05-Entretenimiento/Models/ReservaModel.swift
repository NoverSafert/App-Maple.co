//
//  ReservaModel.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 10/20/21.
//

import Foundation
import SwiftUI

struct ReservasResponse : Decodable, Encodable  {
    var reservations : [ReservasModel]
}

struct ReservasModel: Identifiable, Decodable, Encodable {
    
    var id : String
    var fecha : Date
    var hora : String
    var titulo : String
    var usuario: String
    var canPer: Int

    
    enum CodingKeys: String, CodingKey{
        case id = "_id"
        case fecha
        case hora
        case titulo
        case usuario
        case canPer
    }
    
}
