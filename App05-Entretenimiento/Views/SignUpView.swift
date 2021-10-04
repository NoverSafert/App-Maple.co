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
    
    @EnvironmentObject var loginVM : LoginViewModel
    
    var body: some View {

        
        
        VStack{
            TextField("username", text: $username)
            SecureField("password", text: $password)
            
            Button(action: {
                loginVM.signup(username: username, password: password)
                
            }, label: {
                Text("Sign Up")
            })
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
