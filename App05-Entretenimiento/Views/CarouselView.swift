//
//  CarouselView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 9/30/21.
//

import SwiftUI

struct CarouselView: View {
    @EnvironmentObject private var media : MediaModel1
    
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        let x = proxy.frame(in: CoordinateSpace.global).minX
        let diff = abs(x - 32)
        if(diff < 100){
            scale = 1 + (100 - diff) / 500
        } // if
        return scale
    } // Funcion getScale
    
    var body: some View {
            //NavigationView{
                ScrollView{
                    // Inicio del carrusel de imagenes
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 50){ // spacing: 50
                            ForEach(0..<media.arrObras.count){ expo in
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    NavigationLink(destination: Text("Destino"), label: {
                                        VStack(spacing: 1){
                                            Image(media.arrObras[expo].arrImages[0])
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 300) // 150
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 5)
                                                        .stroke(lineWidth: 0.5)
                                                )
                                                .cornerRadius(5)
                                                .shadow(radius: 5)
                                                .clipped()
                                                //.scaleEffect(CGSize(width: scale, height: scale))
                                                .animation(.easeOut(duration: 0.5))
                                        
                                            Text("Autor de la obra")
                                                .padding(.top)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                        } // VStack
                                    }) // NavigationLink
                                    .scaleEffect(.init(width: scale, height: scale))
                                    
                                }// GeometryReader
                                .frame(width: 300, height: 250) // Tarjetas verticales
                                //.frame(width: 300, height: 125) // Tarjetas horizontales (ajustar el spacing del HStack)
                            } // ForEach
                        } // HStack
                        .padding(30)
                    } // ScrollView horizontal
                    // Final del carrusel de imagenes 
                } // ScrollView
        //} // NavigationView
    } // Body View
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .environmentObject(MediaModel1())
    }
}
