//
//  MoviesView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 9/1/21.
//

import SwiftUI

struct MoviesView: View {
    @EnvironmentObject private var media : MediaModel
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea()
            VStack{
                Text("Actuales")
                    .font(.headline)
                    .foregroundColor(.black)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        ForEach( media.arrMovies){ movie in
                            NavigationLink(destination: MovieDetailView(movie: movie),
                                           label: {
                                            MediaRowView(media: movie)
                                           })
                        }
                    }//Vstack
                }
                
                
                Spacer()
                    
            } //Vstack
            .navigationBarTitleDisplayMode(.inline)
            .blendMode(.sourceAtop)
            .toolbar(content: {
                ToolbarItem(placement: .principal, content: {
                    Text("Exposiciones")
                        .foregroundColor(.black)
                        .font(.title)
                })
            })
        }//Zstack
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
            .environmentObject(MediaModel())
    }
}
