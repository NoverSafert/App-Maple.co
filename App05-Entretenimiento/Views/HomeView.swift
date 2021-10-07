//
//  HomeView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 8/31/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View{
        ScrollView{
            VStack{
                Text("Exposiciones")
                    .padding()
                    .multilineTextAlignment(.center)
                ExpositionsCarousel()
            } // VStack
            .padding()
            ZStack{
                Color("ColorRosa")
                    Image("ImagenHomeMarco")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .offset(x: -100.0, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
                Text("MARCO, es un centro cultural de arte contemporáneo internacional, ubicado en la ciudad de Monterrey.")
                    .offset(x: 100.0, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .font(.title2)
            }//ZStack
        } // ScrollView
        
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationAppearance(backgroundColor: UIColor(Color("ColorRosa")), foregroundColor: .black)
        .blendMode(.sourceAtop)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Text("MARCO")
                    .foregroundColor(.black)
                    .font(.title)
            }) // ToolBarItem Content
        }) // ToolBar Content
    } // Body
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ExpositionModel())
    }
}
