//
//  CarouselView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 9/30/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImagesCarousel: View {
    var images: [String]
    
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
                        HStack(spacing: 30){ // spacing: 50
                            ForEach(1..<images.count){ photo in
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    VStack(spacing: 1){
                                        AnimatedImage(url: URL(string: "http://100.24.228.237:10124/exposition/" + images[photo] + ".jpg"))
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 280) // 150
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 5)
                                                    .stroke(lineWidth: 0.5)
                                            )
                                            .cornerRadius(5)
                                            .shadow(radius: 5)
                                            .clipped()
                                            //.scaleEffect(CGSize(width: scale, height: scale))
                                            .animation(.easeOut(duration: 0.5))
                                    } // VStack
                                    .scaleEffect(.init(width: scale, height: scale))
                                    
                                }// GeometryReader
                                .frame(width: 280, height: 230) // Tarjetas verticales - 20
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

struct ImagesCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesCarousel(images: ["Obra1"])
    }
}
