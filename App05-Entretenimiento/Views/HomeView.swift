//
//  HomeView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 8/31/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var media : MediaModel1
    
    @State var x : CGFloat = 0
    @State var count : CGFloat = 0
    @State var screen = UIScreen.main.bounds.width - 30
    @State var op : CGFloat = 0
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea(.all)
            VStack(alignment: .leading){
              //  Text("Top Movies")
                //    .multilineTextAlignment(.center)
                  //  .font(.subheadline)
                   // .foregroundColor(.white)
                ScrollView(){
                    //HStack{
                      //  ForEach(media.arrMovies){movie in
                        //    MovieCellView(movie: movie)
                        //}
                    //}
                    VStack{
                        HStack(spacing: 15){
                            ForEach(media.arrObras){movie in
                                CardView(data: movie)
                                    .offset(x: self.x)
                                    .highPriorityGesture(DragGesture()
                                                            .onChanged({ (value) in
                                                                if value.translation.width > 0{
                                                                    self.x = value.location.x
                                                                }
                                                                else{
                                                                    self.x = value.location.x - self.screen
                                                                }
                                                            })
                                                            .onEnded({ (value) in
                                                                if value.translation.width > 0{
                                                                    if value.translation.width > ((screen - 80) / 2) && Int(self.count) != self.getMid(){
                                                                        self.count -= 1
                                                                        self.updateH(value: Int(self.count))
                                                                        self.x = -((self.screen + 15) * self.count)
                                                                    }
                                                                    else{
                                                                        self.x = -((self.screen + 15) * self.count)
                                                                    }
                                                                }
                                                                else{
                                                                    if -value.translation.width > ((screen - 80) / 2) && -Int(self.count) != self.getMid(){
                                                                        self.updateH(value: Int(self.count))
                                                                        self.count += 1
                                                                        self.x = -((self.screen + 15) * self.count)
                                                                    }
                                                                    else{
                                                                        self.x = -((self.screen + 15) * self.count)
                                                                    }                                                                }
                                                            })
                                )
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .offset(x: self.op)
                        //Spacer()
                    }
                    
                    Text("El Museo de Arte Contemporáneo de Monterrey, también conocido por su acrónimo MARCO, está ubicado en la ciudad de Monterrey, Nuevo León, México. Es obra del arquitecto mexicano Ricardo Legorreta, y fue inaugurado el 28 de junio de 1991.\n\nMARCO se fundó con la misión de generar exposiciones y seleccionar proyectos provenientes de otras instituciones, enfocados a ofrecer al público un marco de referencia respecto al momento actual del arte contemporáneo, nacional e internacional. MARCO busca ser la institución cultural promotora de arte contemporáneo más importante de América Latina.")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                    .animation(.spring())
                    .onAppear{
                        self.op = ((self.screen + 15) * CGFloat(self.media.arrObras.count / 2)) - (self.media.arrObras.count % 2 == 0 ? ((self.screen + 15)/2) : 0)
                        self.media.arrObras[self.getMid()].show = true
                    
                    }
                    
                }
                //Spacer()
            } // VStack
        } // ZStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal, content: {
                    HStack{
                        Image("LogoMarco")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 40)
                    }
                })
            })
        } // ZStack
    func getMid()->Int{
        return media.arrObras.count / 2
    }
    func updateH(value: Int){
        for i in 0..<media.arrObras.count{
            media.arrObras[i].show = false
        }
        media.arrObras[value].show = true
    }
}

struct CardView : View{
    var data : Media1
    var body : some View{
        VStack(alignment: .leading, spacing: 0){
            Image(data.arrImages[0])
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 30, height: data.show ? 460 : 400)
                //.edgesIgnoringSafeArea(.all)
            //Text(data.sName)
              //  .fontWeight(.semibold)
                //.padding(.horizontal, 13)
                //.padding(.horizontal)
                //.multilineTextAlignment(.center)
        }
        .background(Color(.white))
        .cornerRadius(25)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MediaModel())
            .environmentObject(MediaModel1())
    }
}
