//
//  HomeView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 8/31/21.
//

import SwiftUI

struct HomeView: View {
    @State private var showDetails = false
    @State var isPresenting = false
    var body: some View{
        ScrollView{
            VStack{
                Text("Colección Marco")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("ColorRosa2"))
                    .font(.system(size: 30))
                    .padding()
                    .multilineTextAlignment(.center)
                ExpositionsCarousel()
            } // VStack  
            .padding()
            Text("Acerca de nosotros")
                .fontWeight(.bold)
                .foregroundColor(Color("ColorRosa2"))
                .font(.system(size: 30))
            ZStack{
                Color("ColorAmarillo")
                Image("ImagenHomeMarco")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 200, height: 170)
                    .cornerRadius(10)
                    .offset(x: -100.0, y: -30)
                ZStack{
                NavigationLink(
                    destination: InfoMarcoFinalView(),
                    label: {
                        Text("+ Conoce más")
                            .padding()
                            .background(Color("ColorAzul"))
                            .foregroundColor(.white)
                    })
                }
                .padding(.top, 200.0)
                .padding(.leading, -170.0)
                
                Text("MARCO, es un centro cultural de arte contemporáneo internacional, ubicado en la ciudad de Monterrey.")
                    .frame(width: 195, alignment: .center)
                    .offset(x: 106.0, y: 0.0)
                    .font(.title2)
                
            }
            .frame(height: 270.0)
            Text("Calendario de actividades")
                .fontWeight(.bold)
                .foregroundColor(Color("ColorRosa2"))
                .font(.system(size: 30))
            ZStack{
                Color("ColorMorado")
                Image("EventoMarco")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 200, height: 170)
                    .cornerRadius(10)
                    .offset(x: 100.0, y: -30)
                ZStack{
                    Link("+ Conoce más", destination: URL(string: "https://www.marco.org.mx/events")!)
                        .padding()
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                        .background(Color("ColorAmarillo"))
                }
                .padding(.top, 200.0)
                .padding(.leading, 190.0)
                Text("¿Quieres asistir a uno de nuestros eventos que tenemos mensualmente? Da clic en conoce más!")
                    .frame(width: 195, alignment: .center)
                    .foregroundColor(.white)
                    .offset(x: -106.0, y: 0.0)
                    .font(.title2)
            }
            .frame(height: 270.0)
        } // ScrollView
        
        
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
        .background(Color("ColorDeFondo"))

    } // Body
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ExpositionModel())
    }
}
