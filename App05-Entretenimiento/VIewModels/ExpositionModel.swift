//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Team 4 on 16/03/21.
//view model
//

import SwiftUI

class ExpositionModel: ObservableObject {
    @Published var expositions = [Exposition]()
    init() {
        getAll()
    }

    //aquí se llama la función para obtener exposiciones
    func getAll(){
        Webservice().getAllExposition() { result in
            switch result {
            case .success(let expoResult):
                print( "Obtuvo las exposiciones")
                self.expositions = expoResult.expositions
            case .failure(let error):
                print(error)
            }
        }
    }
}
