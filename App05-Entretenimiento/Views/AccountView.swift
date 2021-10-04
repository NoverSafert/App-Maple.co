//
//  AccountView.swift
//  Maple-co
//
//  Created by Alumno on 06/09/21.
//

import SwiftUI

struct AccountView: View {
    @Binding var nombre: String
    @EnvironmentObject var loginVM : LoginViewModel
    
    var body: some View {
        VStack{
            Image("Perfil")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(maxWidth: 200)
            
            Text("\(nombre)")
            
            Form{
                TextField("Nombre", text: $nombre)
            }
            Button(action: {
                            loginVM.logout()
                            
                        }, label: {
                            Text("Sing out")
                        })
        }
            .navigationBarTitle("Account")
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(nombre: .constant("Usuario"))
    }
}
