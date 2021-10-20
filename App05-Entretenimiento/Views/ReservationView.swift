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
            ScrollView{
            VStack{
                Spacer()
                    .frame(height: 80)
                NavigationLink(destination: ReservarVGView()){
                    Text("Reservar visita guiada")
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)

                }
                Spacer()
                    .frame(height: 80)
                Link("Boletos", destination: URL(string: "https://www.marco.org.mx/compra-general/")!)
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)
                Spacer()
                    .frame(height: 80)
                Link("Restaurante", destination: URL(string: "https://www.marco.org.mx/wp-content/uploads/2021/07/menu-restaurante1.pdf")!)
                        .font(.system(size: 20))
                        .frame(width: 170, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Color("ColorRosa"))
                        .cornerRadius(30)
                Spacer()
                    .frame(height: 80)
                HStack{
                    VStack{
                        Text("Restaurante abierdo de martes a sabado")
                        Text("1:00 a 4:00 pm")
                    }
                    .frame(width: 170)
                    VStack{
                        Text("RESERVACIONES")
                        Text("T. +52 (81) 8262.4562, 63 y 64" )
                        Text("eventos@marco.org.mx")
                        Text("DIRECCIÓN")
                        Text("Zuazua y Jardón S/N, Centro. Monterrey, N.L., México. 64000")
                    }
                    .frame(width: 200)
                }
            }//VStack
        }
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
