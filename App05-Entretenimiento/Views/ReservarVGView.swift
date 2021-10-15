//
//  ReservarVGView.swift
//  App05-Entretenimiento
//
//  Created by user195582 on 10/11/21.
//

import SwiftUI

struct ReservarVGView: View {
    
    
    
    @Environment(\.managedObjectContext) var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    @State var tituloReservacion = ""
    @State var usuario = ""
    @State var cantPer = 0
    @State var fecha = Date()
    @State var hora = Date()
    
    var body: some View {
            
            NavigationView{
                    Form{
                        Section(header: Text("Detalle Reserva")){
                            TextField("Titulo", text: $tituloReservacion)
                            TextField("Usuario", text: $usuario)
                            Picker("Number de Personas", selection: $cantPer){
                                ForEach(2 ..< 16){
                                    Text("\($0)")
                                }
                            }
                        }//Boton1
                        
                        Section(header: Text("Horarios")){
                            DatePicker("Fecha", selection: $fecha,
                                       in: Date()...,
                                       displayedComponents: .date)
                            DatePicker("Hora", selection: $hora,
                                       displayedComponents: .hourAndMinute)
                        }//Boton2
                        
                        Button(action: {
                                guardarDatos()
                            self.presentationMode.wrappedValue.dismiss()
                        }){
                            Text("Guardar Reserva")
                        }//Boton3
                        
                    }//Form
                    .background(Color("ColorDeFondo"))
            }//NavigationView
            .navigationBarTitleDisplayMode(.inline)
            .navigationAppearance(backgroundColor: UIColor(Color("ColorRosa")), foregroundColor: .black)
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
        }
        func guardarDatos(){
            guard self.tituloReservacion != "" else{
                return
            }
            let newItem = Reservacion(context: viewContext)
            newItem.titulo = tituloReservacion
            newItem.usuario = usuario
            newItem.cantPer = Int32(cantPer)
            newItem.fecha = fecha
            newItem.hora = hora
            do{
                try viewContext.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    
        init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    }

struct ReservarVGView_Previews: PreviewProvider {
    static var previews: some View {
        ReservarVGView()
    }
}