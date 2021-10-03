//
//  LoginView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 10/3/21.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
            VStack{
                Image("LogoMarco")
                Form{
                    TextField("Username", text: $loginVM.username)
                    SecureField("Password", text: $loginVM.password)
                    
                    HStack{
                        Spacer()
                        Button("Login"){
                            loginVM.login()
                        }
                        Spacer()
                    }
                }
                
                //WebView(html: "http://201.151.0.167:10001/")
            }//Vstack
        }//Zstack
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
