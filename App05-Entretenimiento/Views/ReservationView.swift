//
//  ReservationView.swift
//  App05-Entretenimiento
//
//  Created by user195582 on 10/4/21.
//

import SwiftUI

struct ReservationView: View {
    var body: some View {
        ZStack {
            Color("ColorDeFondo")
                .ignoresSafeArea()
            VStack{
                NavigationLink(destination: ReservarVGView()){
                    Text("Reservar visita guiada")
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)

                }
                Spacer()
                    .frame(height: 80)
                Button(action: {
                    print("boton")
                }) {
                    Text("Boletos de Marco")
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)
                }
                Spacer()
                    .frame(height: 80)
                Button(action: {
                    print("boton")
                }) {
                    Text("Restaurante")
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)
                }
            }//VStack
            .navigationBarTitleDisplayMode(.inline)
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
        }//ZStack
        
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
