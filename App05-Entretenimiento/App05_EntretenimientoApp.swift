//
//  App05_EntretenimientoApp.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 30/08/21.
//

import SwiftUI

@main
struct App05_EntretenimientoApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var media = ExpositionModel()
    @StateObject var loginVM = LoginViewModel()
    @StateObject var MarColect = MarColectionModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(media)
                .environmentObject(loginVM)
                .environmentObject(MarColect)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
