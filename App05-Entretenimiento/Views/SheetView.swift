//
//  SheetView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 10/11/21.
//

import SwiftUI

struct SheetView: View {
    @Binding var show: Bool
    var expo: MarColection
    var body: some View {
        NavigationView{
            
            VStack{
                Text("Autor de la obra: \(expo.autor)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Medidas de la obra: \(expo.sizes)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Tecnicas utilizadas en la obra: \(expo.technique)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Fecha de exposicion: \(expo.year)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
            } // VStack

                .navigationBarTitle(Text(expo.name), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {self.show.toggle()}, label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.white)
                }))
        } // NavView
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(show: .constant(true), expo: MarColection(name: "---", images: ["logo"], autor: "---", sizes: "---", technique: "---", year: "---"))
    }
}
