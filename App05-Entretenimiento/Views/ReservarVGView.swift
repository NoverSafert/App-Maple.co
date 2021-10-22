//
//  ReservarVGView.swift
//  App05-Entretenimiento
//
//  Created by user195582 on 10/11/21.
//

import SwiftUI

struct ReservarVGView: View {
    
    @EnvironmentObject var reserva : ReservaViewModel
    @EnvironmentObject var loginVM : LoginViewModel
    
    @Environment(\.managedObjectContext) var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    @State var tituloReservacion = ""
    @State var cantPer = 0
    @State var fecha = Date()
    @State var hora : String = "10:00 AM"
    var horas_disponibles  = ["10:00 AM", "11:30 AM", "1:00 PM", "2:30 PM", "4:00 PM", "5:30 PM"]
    
    var body: some View {
            
            //NavigationView{
                    Form{
                        Section(header: Text("Detalle Reserva")){
                            TextField("Titulo", text: $tituloReservacion)
                            TextField("Usuario", text: $loginVM.username)
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
                            Picker("Hora", selection: $hora){
                                ForEach(horas_disponibles, id: \.self){ horaTemp in
                                    Text(horaTemp)
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .frame(width: 400, height: 100)
                        }//Boton2
                        
                        Button(action: {
                            reserva.addReserva(titulo: tituloReservacion, username: loginVM.username, fecha: fecha, hora: hora, cantPer: cantPer)
                            self.presentationMode.wrappedValue.dismiss()
                        }){
                            Text("Guardar Reserva")
                        }//Boton3
                        
                    }//Form
                    .background(Color("ColorDeFondo"))
            //}//NavigationView
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
    /*
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
    */
        init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    }

struct ReservarVGView_Previews: PreviewProvider {
    static var previews: some View {
        ReservarVGView()
    }
}
