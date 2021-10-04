//
//  LoginView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 10/3/21.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    @State var showSignUp : Bool = false
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
            VStack{
                Image("LogoMarco")
                VStack{
                            TextField("username", text:$loginVM.username)
                            SecureField("username", text:$loginVM.password)
                            
                            Button(action: {
                                
                                loginVM.login()
                                
                            }, label: {
                                Text("Login")
                            })
                            
                            Button(action: {
                                showSignUp.toggle()
                                
                            }, label: {
                                Text("SignUP")
                            })
                            .sheet(isPresented: $showSignUp, content: {
                                SignUpView()
                            })
                        }//Vstack
            }//Vstack
        }//Zstack
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
