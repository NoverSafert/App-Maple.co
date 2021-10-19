//
//  UsersViewModel.swift
//  App05-Entretenimiento
//
//  Created by user194236 on 10/3/21.
//

import Foundation

class UsersViewModel: ObservableObject{
    @Published var users = [UserModel]()
    
    init(){
        getUsers()
    }
    
    func getUsers(){
        Webservice().getUsers() { result in
            switch result {
            case .success(let usersResult):
                    print("Obtuvo los usuarios")
                self.users = usersResult.users
                    
            case .failure(let error):
                print(error)
            }
        }
    }
}

