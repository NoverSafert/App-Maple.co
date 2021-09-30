//
//  MovieCellView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 02/09/21.
//

import SwiftUI

struct MovieCellView: View {
    
    let movie: Media
    
    var body: some View {
            Image(movie.arrImages[1])
                .resizable()
                .scaledToFit()
                .cornerRadius(10.0)
                .frame(height: 400)
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCellView(movie: Media.defaultMedia)
    }
}
