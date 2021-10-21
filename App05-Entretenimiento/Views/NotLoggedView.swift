//
//  NotLoggedView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 10/21/21.
//

import SwiftUI

struct NotLoggedView: View {
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: "person.2.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 250, height: 300, alignment: .center)
                Text("Para poder acceder a esta funcionalidad, necesitas iniciar sesion o registrarte en la seccion de Perfil")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .frame(width: 250, height: 150, alignment: .center)
            }//VStack
        } // ZStack
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

struct NotLoggedView_Previews: PreviewProvider {
    static var previews: some View {
        NotLoggedView()
    }
}
