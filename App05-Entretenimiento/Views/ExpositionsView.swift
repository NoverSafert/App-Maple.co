//
//  MoviesView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 9/1/21.
//

import SwiftUI

struct ExpositionsView: View {
    @EnvironmentObject private var media : ExpositionModel
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea()
            VStack{
                Text("Actuales")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("ColorRosa2"))
                    .font(.system(size: 30))
                    .offset(x: 0.0, y: 15.0)
                    .multilineTextAlignment(.center)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        ForEach(media.expositions){ expo in
                            NavigationLink(destination: ExpositionDetailView(exposition: expo),
                                           label: {
                                            MediaRowView(media: expo)
                                           })
                        }
                    }//Vstack
                }
                
                
                Spacer()
                    
            } //Vstack
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
            
        }//Zstack
    }
}

struct ExpositionsView_Previews: PreviewProvider {
    static var previews: some View {
        ExpositionsView()
            .environmentObject(ExpositionModel())
    }
}
