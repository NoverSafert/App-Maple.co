//
//  LoginViewModel.swift
//  App05-Entrenimiento
//
//  Created by Elvia Rosas on 29/09/21.
//

import Foundation

class LoginViewModel : ObservableObject {
    
    //var username : String = UserDefaults.standard.string(forKey: "username") ?? ""
    //var password : String = UserDefaults.standard.string(forKey: "password") ?? ""
    
    var username : String = ""
    var password : String = ""
    
    @Published var isLoggedin : Bool = false
    
    func login()  {
        
        Webservice().login(username: username, password: password) { result in
            
            switch (result) {
            case .success(let token):
                print(token)
                DispatchQueue.main.async {
                    self.isLoggedin = true
                }
                print(self.isLoggedin)
                UserDefaults.standard.setValue(self.username, forKey: "username")
                UserDefaults.standard.setValue(self.password, forKey: "password")
                UserDefaults.standard.setValue(token, forKey: "token")
                
                
                case .failure(let error):
                    
                    DispatchQueue.main.async {
                        self.isLoggedin = false
                    }
                    
                    
                    print(error)
                
        
            }
            
        }
        
    }
    
    func logout() {
        DispatchQueue.main.async {
            self.isLoggedin = false
            self.password = ""
        }
    }
    
    func signup(username: String, password: String){
        
        Webservice().signup(username: username, password: password) { result in
            
            switch (result) {
            case .success(let succ):
                print(succ)
                DispatchQueue.main.async {
                    self.isLoggedin = true
                }
                UserDefaults.standard.setValue(self.username, forKey: "username")
                UserDefaults.standard.setValue(self.password, forKey: "password")

                
                
                case .failure(let error):
                    
                    print(error)
                    
                    DispatchQueue.main.async {
                        self.isLoggedin = false
                    }
                    
                
        
            }
            
        }
        
    }
    
}

