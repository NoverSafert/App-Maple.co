//
//  HomeView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 8/31/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View{
        ScrollView{
            VStack{
                Text("Exposiciones")
                    .padding()
                    .multilineTextAlignment(.center)
                CarouselView()
            } // VStack
        } // ScrollView
        .navigationBarTitleDisplayMode(.inline)
        .navigationAppearance(backgroundColor: UIColor(Color("ColorRosa")), foregroundColor: .black)
        .blendMode(.sourceAtop)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Text("MARCO")
                    .foregroundColor(.black)
                    .font(.title)
            }) // ToolBarItem Content
        }) // ToolBar Content
    } // Body
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MediaModel())
            .environmentObject(MediaModel1())
    }
}
