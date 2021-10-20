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
        getMarColection()
    }
    
    func getMarColection() {
        Webservice().getAllMarcoColection() { result in
            switch result{
            case .success(let marColectResponse):
            print("Obtuvo la coleccion marco")
                self.expositions = marColectResponse.expositions
            
            case .failure(let error):
            print(error)
            }
        }
    }
}
