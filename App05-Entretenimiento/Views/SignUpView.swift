//
//  SignUpView.swift
//  App05-Entrenimiento
//
//  Created by Elvia Rosas on 29/09/21.
//

import SwiftUI

struct SignUpView: View {
    
    @State var username : String = ""
    @State var password : String = ""
    @Binding var show : Bool
    
    @EnvironmentObject var loginVM : LoginViewModel
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("ColorDeFondo")
                    .ignoresSafeArea(.all)
                VStack{
                    TextField("Usuario", text: $username)
                        .frame(width: 300, height: 40)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .autocapitalization(.none)
                    SecureField("Contraseña", text: $password)
                        .frame(width: 300, height: 40)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .autocapitalization(.none)
                    
                    Button(action: {
                        if(username.count >= 4 && password.count >= 8){
                            loginVM.signup(username: username, password: password)
                            show.toggle()
                        }
                    }, label: {
                        Text("Registrate")
                            .fontWeight(.semibold)
                            .frame(width: 100, height: 50)
                            .background(Color("ColorRosa"))
                            .clipShape(RoundedRectangle(cornerRadius: 90))
                            .foregroundColor(.white)
                            .hoverEffect(.highlight)
                            .padding(.bottom)
                    })
                    
                    Text("Consideraciones")
                        .fontWeight(.bold)
                        .padding(.top)
                        .padding(.bottom)
                    Text("La longitud de la contraseña debe tener una longitud minima de 8 caracteres \nEl nombre de usuario debe de contener al menos 4 caracteres")
                        .fontWeight(.regular)
                        .frame(width: 300, height: 125, alignment: .top)
                        .multilineTextAlignment(.center)
                } // VStack
            } // ZStack
                .navigationBarTitle(Text("Unete a MARCO"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {self.show.toggle()}, label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.white)
                }))
        } // NavView
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(show: .constant(true))
    }
}
