//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//

import SwiftUI

class MarColectionModel: ObservableObject {
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(49.5 x 70 cm)",
                                                  technique: "Óleo sobre madera",
                                                  year: 1994
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(264 x 158 cm)",
                                                  technique: "Óleo sobre yute",
                                                  year: 1994
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(243 x 298 cm)",
                                                  technique: "Acrílico, óleo, tinta de serigrafía sobre tela con marco de aluminio y pasto artificial",
                                                  year: 1992
                                                    )
                            )
        expositions.append(expo)
        
        expo = Exposition(sName: "Ankaa",
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(50 x 50 x 120 cm)",
                                                  technique: "Madera y espejo",
                                                  year: 2015
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(75 x 106 cm)",
                                                  technique: "Litografía. Edición 4 de 18",
                                                  year: 2008
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(80 x 103 cm)",
                                                  technique: "Lápiz, tinta y acuarela sobre papel",
                                                  year: 2009
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(206 x 176 cm)",
                                                  technique: "Óleo, rayo láser y mixta sobre tela",
                                                  year: 1994
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "(196 x 303 cm)",
                                                  technique: "Óleo sobre lino",
                                                  year: 1994
                                                    )
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
                          sRecorrido: "",
                          isMarcolection: true,
                          colection: MarColection(sizes: "Variables",
                                                  technique: "Coroplast, PVC, aluminio, acero cromado, cable de acero y luces fluorescentes",
                                                  year: 2013
                                                    )
                            )
        expositions.append(expo)
        
    }
}
