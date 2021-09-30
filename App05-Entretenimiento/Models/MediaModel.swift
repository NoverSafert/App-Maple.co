//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Elvia Rosas on 16/03/21.
//

    import SwiftUI

    class MediaModel: ObservableObject {
        
        @Published var arrMovies = [Media]()
        @Published var arrSeries = [Media]()
        
        
        init() {
            LoadInfo()
        }
        
        func LoadInfo(){
            var expo: Media

            expo = Media(sName: "INDEX \nMARCO – FF projects",sDescription: "A raíz de la fuerte crisis económica que enfrentan los museos a nivel internacional, y derivado de la necesidad de buscar nuevos posicionamientos de las producciones artísticas actuales, MARCO pensó en el patio de las esculturas como una posibilidad de generar nexos con la comunidad artística de Monterrey que se ha preocupado por buscar un lugar en el espacio institucional global. Por tal motivo, su directora Taiyana Pimentel en colaboración con los Miembros del Consejo Directivo, pensaron en este proyecto. \nEl subtexto de la exposición es relevante al momento que estamos todos viviendo e incita a reflexionar sobre las maneras en las cuales los eventos de actualidad informan el trabajo creativo de artistas reconocidos mundialmente.", sCuraduria: "Eduardo López, fundador y director de la galería FF projects.", sMuseografia: "Eduardo López.", sSalas: "Patio de las esculturas.", sTecnicas: "Escultura e instalación." , sObras: "10 piezas", arrImages: ["Index1","Index2","Index3","Index4","Index5","Index6","Index7","Index8","Index9","Index10"], boolVideo: false, sVideo: "", boolRecorrido: true, sRecorrido: "https://www.patiomarco.360s.mx/")
            arrMovies.append(expo)
            
            expo = Media(sName: "La poética del Regreso \nMario García Torres", sDescription: "En esta muestra curada por Taiyana Pimentel, se establece un paralelismo entre las prácticas posconceptuales y de inmersión en la construcción histórica por la que se ha conocido a García Torres, con los inicios de sus estrategias estéticas en las ciudades de Monterrey y México; se analiza a través de obras tempranas, las connotaciones del sentido del espacio y del paisaje nacidos tempranamente en la ciudad que le acogió en su época de formación y que son conceptos que lo han acompañado en su práctica artística posterior. Con base en esta premisa, se podrán apreciar obras como la pintura Cerro de la Silla, 1998 y el video Open Letter to Dr. Atl, 2005, realizado en Guadalajara.\n La poética del regreso propone una selección de obras que en su mayoría han sido presentadas en recintos internacionales pero que será la primera vez que se expongan en la ciudad tales como: Merz, Rzemmmm Zeeeeerm Emrzzzzz (At Fibonacci Pace), s/f, The Schilieren Plot, 2013, La Fiesta fue ayer (una narrativa fragmentada sobre la breve historia del Museo Dinámico), s/f, Unspoken Dailies, 2003-2009, Tetela, 2015 y Silence´s Wearing Thin Here Mario García, s/f, entre otras. ", sCuraduria: "Taiyana Pimentel", sMuseografia: "Museo de Arte Contemporáneo de Monterrey", sSalas: "1 a 5 | Planta baja", sTecnicas: "Pintura, video, instalación, sonido y performance", sObras: "Más de 30", arrImages: ["Galeria_MGT_1", "Galeria_MGT_2", "Galeria_MGT_3"], boolVideo: true, sVideo: "https://youtu.be/swhrA3qoqx4", boolRecorrido: true, sRecorrido: "https://www.museomarco.360s.mx/")
            arrMovies.append(expo)
        }
}
