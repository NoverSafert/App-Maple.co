//
//  AccountView.swift
//  Maple-co
//
//  Created by Alumno on 06/09/21.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var loginVM : LoginViewModel
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
            VStack{
                Image("LogoMarco")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Bienvenido a Marco, " + "\(loginVM.username)")
                    .fontWeight(.bold)
                    .padding()
                } // VStack
            } // ZStack
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {loginVM.logout()}, label: {
            //Image(systemName: "figure.walk")
              //  .foregroundColor(.white)
            Text("Salir")
                .foregroundColor(.white)
        }))
        
        .navigationAppearance(backgroundColor: UIColor(Color("ColorRosa")), foregroundColor: .black)
        .blendMode(.sourceAtop)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Image("MarcoLogoBlanco").resizable()
                    .frame(width: 150, height:100)
            }) // ToolBarItem Content
        }) // ToolBar Content
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
