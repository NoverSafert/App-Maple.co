//
//  SheetView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 10/11/21.
//

import SwiftUI

struct SheetView: View {
    @Binding var show: Bool
    var expo: Exposition
    var body: some View {
        NavigationView{
            
            VStack{
                Text("Autor de la obra: \(expo.sCuraduria)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Medidas de la obra: \(expo.colection.sizes)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Tecnicas utilizadas en la obra: \(expo.colection.technique)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Fecha de exposicion: \(expo.colection.year)")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
            } // VStack

                .navigationBarTitle(Text(expo.sName), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {self.show.toggle()}, label: {
                    Image(systemName: "xmark.circle")
                }))
        } // NavView
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(show: .constant(true), expo: Exposition.defaultMedia)
    }
}
