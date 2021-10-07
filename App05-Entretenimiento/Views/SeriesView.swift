//
//  SeriesView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 02/09/21.
//

import SwiftUI

struct SeriesView: View {
    @EnvironmentObject private var media : ExpositionModel
        
        var body: some View {
            ZStack{
                Color(.darkGray)
                    .ignoresSafeArea()
                VStack{
                    Text("Top Series")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            ForEach( media.expositions){ serie in
                                NavigationLink(destination: MovieDetailView(movie: serie), // Cambiar nombre de función
                                               label: {
                                                MediaRowView(media: serie)
                                               })
                            }
                        }//Hstack
                    }
                    
                    
                    Spacer()
                } //Vstack
                .navigationBarTitleDisplayMode(.inline)
                .blendMode(.sourceAtop)
                .toolbar(content: {
                    ToolbarItem(placement: .principal, content: {
                        Text("Series")
                            .foregroundColor(.black)
                    })
                })
            }//Zstack
    }
}

struct SeriesView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesView()
    }
}
