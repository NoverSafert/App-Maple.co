//
//  NotificationView.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 9/7/21.
//

import SwiftUI
import CoreData

struct NotificationView: View {
    
    @Environment(\.managedObjectContext) var viewContext

    @FetchRequest(entity: Reservacion.entity(), sortDescriptors: [NSSortDescriptor(key:  "fecha", ascending: false)])

    var fetchedItems: FetchedResults<Reservacion>
    
    var body: some View {
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea()
            NavigationView{
                List{
                    ForEach(fetchedItems, id:\.self){item in
                        Text(item.titulo!)
                        
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
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
            Text("Notificaciones")
        }
    }

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

