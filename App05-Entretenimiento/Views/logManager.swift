//
//  logManager.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 21/10/21.
//

import SwiftUI

struct logManager: View {
    @EnvironmentObject var loginVM : LoginViewModel
    var body: some View {
        if(!loginVM.isLoggedin){
            LoginView()
        }
        else{
            AccountView(nombre: $loginVM.username, loginVM: _loginVM)
        }
    }
}

//struct logManager_Previews: PreviewProvider {
//    static var previews: some View {
//        logManager()
//    }
//}
