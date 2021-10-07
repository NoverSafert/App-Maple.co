//
//  MainView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 30/08/21.
//

import SwiftUI

struct MainView: View {
    
    enum Tab{
        case home
        case exposiciones
        case notificaciones
        case account
        case reservaciones
    }
    
    @State private var selection: Tab = .home
    
    init(){
        let navBarApperance = UINavigationBarAppearance()
        navBarApperance.titleTextAttributes = [.foregroundColor:
            UIColor.black]
        navBarApperance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navBarApperance.backgroundColor = UIColor(Color("ColorDeFondo"))
        navBarApperance.shadowColor = .clear
        UINavigationBar.appearance().compactAppearance = navBarApperance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarApperance
        UINavigationBar.appearance().tintColor = UIColor(.black)
        
        let tabBarAppearance = UITabBarAppearance()
        
        //Barra de abajo
        tabBarAppearance.backgroundColor = UIColor(Color("ColorTerracota"))
        UITabBar.appearance().standardAppearance = tabBarAppearance
        tabBarAppearance.backgroundEffect = blur(radius: 100, opaque: true) as? UIBlurEffect
    
    }
    
    @State var nombre: String = ""
    
    var body: some View {
        
        
        ZStack{
            Color("ColorDeFondo")
                .ignoresSafeArea()
            TabView(selection: $selection) {
                NavigationView{
                    HomeView()
                }
            .tabItem{
                let menuText = Text("Home", comment: "Home")
                Label{
                    menuText
                } icon:{
                    Image(systemName: "house")
                }
            }
            .tag(Tab.home)
                .navigationAppearance(backgroundColor: UIColor(Color("ColorDeFondo")) , foregroundColor: .black, tintColor: .systemTeal, hideSeparator: true)

                NavigationView{
                    NotificationView()
                }
                .tabItem{
                    let menuText = Text("Notificaciones", comment: "Notificaciones")
                    Label{
                        menuText
                    } icon:{
                        Image(systemName: "bell")
                    }
                }
                .tag(Tab.notificaciones)
            
            NavigationView{
                ExpositionsView()
            }
                .tabItem{
                    let menuText = Text("Exposiciones", comment: "Exposiciones")
                    Label{
                        menuText
                    } icon:{
                        Image(systemName: "squares.below.rectangle")
                    }
                }
                .tag(Tab.exposiciones)
            
                Text("Reservaciones")
                    .tabItem{
                        let menuText = Text("Reservaciones", comment: "calendar")
                        Label{
                            menuText
                        } icon:{
                            Image(systemName: "calendar")
                        }
                    }
                    .tag(Tab.reservaciones)

                
                NavigationView{
                    LoginView()
                    //AccountView(nombre: $nombre)
                }
                .tabItem{
                    let menuText = Text("Account", comment: "Account")
                    Label{
                        menuText
                    } icon:{
                        Image(systemName: "person.crop.circle")
                    }
                }
                .tag(Tab.account)
                
                
    }
            .accentColor(.black)
        }
            

    }
}

struct MainViewView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
