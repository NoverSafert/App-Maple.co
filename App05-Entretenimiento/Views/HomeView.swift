//
//  HomeView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 8/31/21.
//

import SwiftUI

struct HomeView: View {
    @State private var showDetails = false
    @State var isPresenting = false
    var body: some View{
        ScrollView{
            VStack{
                Text("Exposiciones")
                    .padding()
                    .multilineTextAlignment(.center)
                ExpositionsCarousel()
            } // VStack
            .padding()
            NavigationLink(destination: InfoMarcoView()){
                    Text("+ Conoce más")
            }.buttonStyle(PlainButtonStyle())
            ZStack{
                Color("ColorRosa")
                Button(action: {
                    isPresenting = true
                    
                }, label: {
                        Text("+ Conoce más")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            //.cornerRadius(10)
                            //.offset(x: -100, y: 100)
                        
                    })
                .padding(.top, 200.0)
                .padding(.leading, -170.0)
                    Image("ImagenHomeMarco")
                        .resizable()
                        //.scaledToFit()
                        .frame(width: 200, height: 170)
                        .cornerRadius(10)
                        .offset(x: -100.0, y: -30)
                
                Text("MARCO, es un centro cultural de arte contemporáneo internacional, ubicado en la ciudad de Monterrey.")
                    .frame(width: 195.0)
                    .offset(x: 100.0, y: 0.0)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                
            }
            .frame(height: 270.0)
            //NavigationLink( destination: InfoMarcoView(),
                //isActive: $isPresenting)
            //ZStack
            
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
        .background(Color("ColorDeFondo"))

    } // Body
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ExpositionModel())
    }
}
