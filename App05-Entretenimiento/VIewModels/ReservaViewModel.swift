//
//  ReservaViewModel.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 10/20/21.
//

import SwiftUI

class ReservaViewModel : ObservableObject {
    
    @Published var arrReservas = [ReservasModel]()
    
    init(){
        //getReservas()
    }
    
    func addReserva(titulo: String, username : String, fecha: Date, hora: String, cantPer: Int)  {
        Webservice().addReserva(titulo: titulo, username : username, fecha: fecha, hora: hora, cantPer: cantPer) { result in
            
            switch (result) {
            case .success(let succ ):
                print(succ)
                case .failure(let error):
                    
                    print(error)
            }
            
        }
        
    }
    
    func getReservas(completion: @escaping ([ReservasModel]) -> ()) {
            
            let username = UserDefaults.standard.string(forKey: "username") ?? " "
            //let username = "Pedro"
            Webservice().getReservas(username: username) { result in
                switch result {
                    case .success(let reservas):
                            print("Obtuvo las reservas")
                        self.arrReservas = reservas.reservations
                        DispatchQueue.main.async {
                            completion(reservas.reservations) //nos aseguramos de estar en el thread principal
                        }

                            
                    case .failure(let error):
                        print(error)
                }
            }
        }

    
}
