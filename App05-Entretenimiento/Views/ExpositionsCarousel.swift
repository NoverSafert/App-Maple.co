//
//  CarouselView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 9/30/21.
//

import SwiftUI

struct ExpositionsCarousel: View {
    @EnvironmentObject private var media : MarColectionModel
    @State private var showPopUp: Bool = false
    @State private var selected: Exposition = MarColectionModel.init().expositions[0] //Exposition.defaultMedia
    
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
                            ForEach(media.expositions){ expo in
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    Button(action:{
                                        self.selected = expo
                                        withAnimation{
                                            self.showPopUp.toggle()
                                        }
                                    }, label: {
                                        VStack(spacing: 1){
                                            Image(expo.arrImages[0])
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
                                                .animation(.easeOut(duration: 0.5))
                                            Text(expo.sName)
                                                .padding(.top)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                        } // VStack
                                    }) // Button
                                    .sheet(isPresented: $showPopUp, content: {
                                        VStack{
                                            Text("Autor de la obra: \(selected.sCuraduria)")
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.leading)
                                                .padding()
                                            Text("Medidas de la obra: \(selected.colection.sizes)")
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.leading)
                                                .padding()
                                            Text("Tecnicas utilizadas en la obra: \(selected.colection.technique)")
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.leading)
                                                .padding()
                                            Text("Fecha de exposicion: \(selected.colection.year)")
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.leading)
                                                .padding()
                                            Button(action: {self.showPopUp.toggle()}, label: {
                                                Image(systemName: "arrow.down.circle.fill")
                                            })
                                        } // VStack
                                    }) // sheet-content
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
        ExpositionsCarousel()
            .environmentObject(MarColectionModel())
    }
}
