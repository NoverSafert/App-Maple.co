//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//

import SwiftUI

class MarColectionModel: ObservableObject {
    @Published var expositions = [MarColection]()
    init() {
        LoadInfo()
    }
    func LoadInfo(){
        var expo: MarColection
        expo = MarColection(name: "Depresion",
                            images: ["expo1", "NahumZenil"],
                            autor: "Nahum B. Zenil",
                            sizes: "(49.5 x 70 cm)",
                            technique: "Óleo sobre madera",
                            year: "1994"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "Evolucion gradual",
                            images: ["expo2", "JorgeTacla"],
                            autor: "Jorge Tacla",
                            sizes: "(264 x 158 cm)",
                            technique: "Óleo sobre yute",
                            year: "1994"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "Junglrama",
                            images: ["expo3", "KennyScharf"],
                            autor: "Kenny Scharf",
                            sizes: "(243 x 298 cm)",
                            technique: "Acrílico, óleo, tinta de serigrafía sobre tela con marco de aluminio y pasto artificial",
                            year: "1994"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "Ankaa",
                            images: ["expo4", "JuliaCarrillo"],
                            autor: "Julia Carrillo",
                            sizes: "(50 x 50 x 120 cm)",
                            technique: "Madera y espejo",
                            year: "2015"
                                        )
        expositions.append(expo)

        expo = MarColection(name: "Pareja de ovejas",
                            images: ["expo5", "ClaudioBravo"],
                            autor: "Claudio Bravo",
                            sizes: "(75 x 106 cm)",
                            technique: "Litografía. Edición 4 de 18",
                            year: "2008"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "Rutina",
                            images: ["expo6", "RamiroMartinez"],
                            autor: "Ramiro Martínez Plasencia",
                            sizes: "(80 x 103 cm)",
                            technique: "Lápiz, tinta y acuarela sobre papel",
                            year: "2009"
                                        )
        expositions.append(expo)

        expo = MarColection(name: "Todavía hay prisioneros políticos boricuas",
                            images: ["expo7", "JuanSanchez"],
                            autor: "Juan Sanchez",
                            sizes: "(206 x 107 cm)",
                            technique: "Óleo, rayo láser y mixta sobre tela",
                            year: "1994"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "La ultima cena",
                            images: ["expo8", "ArturoRivera"],
                            autor: "Arturo Rivera",
                            sizes: "(196 x 303 cm)",
                            technique: "Óleo sobre lino",
                            year: "1994"
                                        )
        expositions.append(expo)
        
        expo = MarColection(name: "Vorticity",
                            images: ["expo9", "AnibalCatalan"],
                            autor: "Anibal Catalan",
                            sizes: "Variables",
                            technique: "Coroplast, PVC, aluminio, acero cromado, cable de acero y luces fluorescentes",
                            year: "2013"
                                        )
        expositions.append(expo)
    }
}
