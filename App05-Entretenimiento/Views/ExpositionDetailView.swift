//
//  MovieDetailView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 02/09/21.
//

import SwiftUI

struct FullScreenModalView: View { // 1
    let recorrido: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View { // 2
        VStack{ // 3
            WebView(html: recorrido)
        } // 3
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ColorDeFondo"))
        .edgesIgnoringSafeArea(.all)
        .onTapGesture{ // 4
            presentationMode.wrappedValue.dismiss()
        } // 4
    } // 2
} //1

struct ExpositionDetailView: View {
    let exposition: Exposition
    
    @State private var isPresented = false
    
    var body: some View {  
        ZStack{
            Color("ColorDeFondo")
            ScrollView{
                VStack{
                    ZStack{
                        //logo de expo
                            VStack{
                                
                                Image(exposition.arrImages[0])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                                Text(exposition.sName)
                                    .font(.headline)
                                    .foregroundColor(Color("ColorRosa"))
                                Text("\(String(exposition.sSalas))")
                                    .font(.caption)
                            }//Vstack
                    }//Zstack
                    ScrollView{
                        ZStack{
                            Color("ColorRosa")
                                .cornerRadius(10)
                            Text(exposition.sDescription)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                    
                    TabView{
                        ImagesCarousel(images: exposition.arrImages)
                        //ForEach(movie.arrImages, id:\.self){ image in
                            //Image(image)
                            //    .resizable()
                           //     .scaledToFit()
                          //      .frame(height: 200)
                         //       .clipShape(Rectangle())
                        //}
                    }
                    .tabViewStyle(PageTabViewStyle())
                    if(exposition.boolVideo){
                        VideoWebView(url: exposition.sVideo)
                            .frame(height: 400)
                    }
                    
                    if(exposition.boolRecorrido){
                        
                        WebView(html: exposition.sRecorrido)
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

struct ExpositionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpositionDetailView(exposition: Exposition.defaultMedia)
    }
}
