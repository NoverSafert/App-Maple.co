//
//  MovieDetailView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 02/09/21.
//

import SwiftUI

struct FullScreenModalView: View {
    let recorrido: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            WebView(html: recorrido)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ColorDeFondo"))
        .edgesIgnoringSafeArea(.all)
        .onTapGesture{
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct MovieDetailView: View {
    let movie: Exposition
    
    @State private var isPresented = false
    
    var body: some View {  
        
        ZStack{
            Color("ColorDeFondo")
            ScrollView{
                VStack{
                    ZStack{
                        //logo de expo
                            VStack{
                                
                                Image(movie.arrImages[0])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                                Text(movie.sName)
                                    .font(.headline)
                                    .foregroundColor(Color("ColorRosa"))
                                Text("\(String(movie.sSalas))")
                                    .font(.caption)
                            }//Vstack
                    }//Zstack
                    ScrollView{
                        ZStack{
                            Color("ColorRosa")
                                .cornerRadius(10)
                            Text(movie.sDescription)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                    
                    TabView{
                        ForEach(movie.arrImages, id:\.self){ image in
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .clipShape(Rectangle())
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    if(movie.boolVideo == true){
                        VideoWebView(url: movie.sVideo)
                            .frame(height: 400)
                    }
                    
                    if(movie.boolRecorrido == true){
                        
                        WebView(html: movie.sRecorrido)
                            .frame(height: 500)
                        
                        /*Button("Fullscreen"){
                            self.isPresented.toggle()
                        }
                        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView() -> movie.sRecorrido )*/
                    }
                    
                }//Vstack
            .padding()
            }
        }
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Exposition.defaultMedia)
    }
}
