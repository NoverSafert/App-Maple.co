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
                .ignoresSafeArea(.all)
            VStack{
                Image("LogoMarco")
                    
                VStack{
                    TextField("Usuario", text: $loginVM.username)
                        .frame(width: 300, height: 40)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .autocapitalization(.none)
                    SecureField("Contraseña", text: $loginVM.password)
                        .frame(width: 300, height: 40, alignment: .center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .autocapitalization(.none)
                            
                            Button(action: {
                                print(loginVM.username + loginVM.password)
                                loginVM.login()
                                
                            }, label: {
                                Text("Inicia Sesion")
                                    .fontWeight(.semibold)
                                    .frame(width: 125, height: 50)
                                    .background(Color("ColorRosa"))
                                    .clipShape(RoundedRectangle(cornerRadius: 50))
                                    .foregroundColor(.white)
                                    .padding(3)
                                    .hoverEffect(.highlight)
                                
                            })
                            
                            Button(action: {
                                showSignUp.toggle()
                                
                            }, label: {
                                Text("Registrate")
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 50)
                                    .background(Color("ColorRosa"))
                                    .clipShape(RoundedRectangle(cornerRadius: 90))
                                    .foregroundColor(.white)
                                    .hoverEffect(.highlight)
                            })
                            .sheet(isPresented: $showSignUp, content: {
                                SignUpView(show: $showSignUp)
                            })
                        }//Vstack
            }//Vstack
        }//Zstack
        .navigationBarTitleDisplayMode(.inline)
        .navigationAppearance(backgroundColor: UIColor(Color("ColorRosa")), foregroundColor: .black)
        .blendMode(.sourceAtop)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                //Text("MARC▢")
                //    .foregroundColor(.black)
                 //   .font(.title)
                Image("MarcoLogoBlanco").resizable()
                    .frame(width: 150, height:100)
            }) // ToolBarItem Content
        }) // ToolBar Content
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
