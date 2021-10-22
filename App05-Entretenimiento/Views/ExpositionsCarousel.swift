//
//  CarouselView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 9/30/21.
//

import SwiftUI
import SDWebImageSwiftUI


struct ExpositionsCarousel: View {
    @EnvironmentObject private var MarColect : MarColectionModel
    @State var showPopUp: Bool = false
    @State var selected = MarColection.defaultMedia //Exposition.defaultMedia

    
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
                            ForEach(MarColect.expositions){ expo in
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    Button(action:{
                                        self.selected = expo
                                        withAnimation{
                                            self.showPopUp.toggle()
                                        }
                                    }, label: {
                                        VStack(spacing: 1){
                                            //Image(expo.images[0])
                                            AnimatedImage(url: URL(string: "http://100.24.228.237:10124/colectMarco/" + expo.images[0] + ".jpg"))
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 280) // 150
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 5)
                                                        .stroke(lineWidth: 0.5)
                                                )
                                                .cornerRadius(5)
                                                .shadow(radius: 5)
                                                .clipped()
                                                .animation(.easeOut(duration: 0.5))
                                            Text(expo.name)
                                                .padding(.top)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                        } // VStack
                                    }) // Button
                                    .sheet(isPresented: $showPopUp, content: {
                                        SheetView(show: self.$showPopUp, expo: self.selected)
                                    }) // sheet-content
                                    .scaleEffect(.init(width: scale, height: scale))
                                }// GeometryReader
                                .frame(width: 280, height: 230) // Tarjetas verticales
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
        ExpositionsCarousel()
            .environmentObject(MarColectionModel())
    }
}
