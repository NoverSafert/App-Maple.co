//
//  MainView.swift
//  App05-Entretenimiento
//
//  Created by Alumno on 30/08/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var loginVM : LoginViewModel
    
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
        let tabBar = UITabBar()
        //Barra de abajo
        UITabBar.appearance().standardAppearance = tabBarAppearance
        tabBar.isTranslucent = true
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.barTintColor = .clear
        tabBar.layer.backgroundColor = UIColor.clear.cgColor
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = tabBar.bounds
        blurView.autoresizingMask = .flexibleWidth
        tabBar.insertSubview(blurView, at: 0)
    
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
                    if(loginVM.isLoggedin){
                        NotificationView()
                    }
                    else{
                        NotLoggedView()
                    }
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
            
                NavigationView{
                    if(loginVM.isLoggedin){
                        ReservationView()
                    }
                    else{
                        NotLoggedView()
                    }
                }
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
                    //logManager()
                    if(!loginVM.isLoggedin){
                        LoginView()
                    }
                    else{
                        AccountView()
                    }
                }
                    //AccountView(nombre: $nombre)
                .tabItem{
                    let menuText = Text("Perfil", comment: "Account")
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
struct BlurView: UIViewRepresentable{
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //
    }
    
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(
        effect: UIBlurEffect(style: style)
        )
        return view
    }
}

struct MainViewView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
