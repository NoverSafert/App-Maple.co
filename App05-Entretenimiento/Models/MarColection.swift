//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//

import SwiftUI

class MarColection: ObservableObject {
    @Published var expositions = [Exposition]()
    init() {
        LoadInfo()
    }
    func LoadInfo(){
        var expo: Exposition
        expo = Exposition(sName: "Depresion",
                          sDescription: "",
                          sCuraduria: "Nahum B. Zenil",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo1"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
            
        expo = Exposition(sName: "Evolucion gradual",
                          sDescription: "",
                          sCuraduria: "Jorge Tacla",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo2"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Junglrama",
                          sDescription: "",
                          sCuraduria: "Kenny Scharf",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo3"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Madera y espejo",
                          sDescription: "",
                          sCuraduria: "Julia Carrillo",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo4"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Pareja de ovejas",
                          sDescription: "",
                          sCuraduria: "Claudio Bravo",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo5"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Rutina",
                          sDescription: "",
                          sCuraduria: "Ramiro Martínez Plasencia",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo6"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        
        expo = Exposition(sName: "Todavía hay prisioneros políticos boricuas",
                          sDescription: "",
                          sCuraduria: "Juan Sanchez",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo7"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        
        expo = Exposition(sName: "La ultima cena",
                          sDescription: "",
                          sCuraduria: "Arturo Rivera",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo8"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Vorticity, 2013",
                          sDescription: "",
                          sCuraduria: "Anibal Catalan",
                          sMuseografia: "",
                          sSalas: "",
                          sTecnicas: "",
                          sObras: "",
                          arrImages: ["expo9"],
                          boolVideo: false,
                          sVideo: "",
                          boolRecorrido: false,
                          sRecorrido: ""
                            )
        expositions.append(expo)
        
    }
}
