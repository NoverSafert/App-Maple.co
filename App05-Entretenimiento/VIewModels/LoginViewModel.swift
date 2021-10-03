//
//  LoginViewModel.swift
//  Login
//
//  Created by Elvia Rosas on 14/09/21.
//

import Foundation

class LoginViewModel: ObservableObject{
 
    var username: String = ""
    var password: String = ""
    
    func login() {
        
        Webservice().login(username: username, password: password) { result in
            switch result {
                case .success(let token):
                    print(token)
                    print("Login exitoso")
                case .failure(let error):
                    print(error.localizedDescription)
                    print("Login fallo")
            }
            
        }
        
    }
}
