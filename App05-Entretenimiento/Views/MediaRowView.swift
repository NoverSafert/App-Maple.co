//
//  MovieRwView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 02/09/21.
//

import SwiftUI

struct MediaRowView: View {
    let media : Exposition
    
    var body: some View {
        VStack{
            VStack{
                Image(media.arrImages[0])
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(3.0)
                        .frame(height: 300)
                
                VStack(alignment: .leading, spacing: 10){
                    Text(media.sName)
                        .font(.title2)
                        .foregroundColor(.black)
                    /*
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(.yellow)
                        /*
                        Text("\(String(media.dScore))")
                         */
                    }
                    Text("\(String(media.iYear))")
                        .font(.caption)
                        */
                    
                }
            }
            .padding()
            Divider()
        }
        
    }
}

struct MediaRowView_Previews: PreviewProvider {
    static var previews: some View {
        MediaRowView(media: Exposition.defaultMedia)
    }
}
