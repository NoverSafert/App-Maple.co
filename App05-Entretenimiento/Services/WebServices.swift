//
//  WebServices.swift
//  Login
//
//  Created by Elvia Rosas on 14/09/21.
//

import Foundation

enum AuthenticationError: Error{
    case invalidCredentials
    case custom(errorMessage: String)
}

struct LoginRequestBody: Codable{
    let username : String
    let password: String
}

struct LoginResponse: Codable{
    let token: String?
    let message: String?
    let success: Bool?
}

enum ComunicationError: Error{
    case connectionError
    case custom(errorMessage: String)
}

struct AddUserRequestBody: Codable{
    let username : String
    let password: String
    let usertype : String
}

struct AddUserResponse: Codable{
    let message: String?
    let success: Bool?
}

struct AddReservaRequestBody: Codable{
    let titulo : String
    let usuario: String
    let fecha : Date
    let hora : String
    let canPer : Int
}

struct AddReservaResponse: Codable{
    let message: String?
}

class Webservice{
    func login(username: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
        
        guard let url = URL(string: "http://100.24.228.237:10124/users/login") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
    
        let body = LoginRequestBody(username: username, password: password)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let token = loginResponse.token else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(token))
            
            
        }.resume()
    }

    func signup(username: String, password: String, completion: @escaping (Result<Bool, ComunicationError>) -> Void) {
        
        guard let url = URL(string: "http://100.24.228.237:10124/users/addUser") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
    
        let body = AddUserRequestBody(username: username, password: password, usertype: "usuario")
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let AddUserResponse = try? JSONDecoder().decode(AddUserResponse.self, from: data) else {
                completion(.failure(.connectionError))
                return
            }
            
            guard let token = AddUserResponse.success else {
                completion(.failure(.connectionError))
                return
            }
            
            completion(.success(token))
            
            
        }.resume()
    }

    
    func getUsers(completion: @escaping (Result<UserResponse, ComunicationError>) -> Void) {
        
        guard let url = URL(string: "http://100.24.228.237:10124/users") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
    
        URLSession.shared.dataTask(with: url) { data, response, error in
            print(data!.count)
            let usersResponse = try! JSONDecoder().decode(UserResponse.self, from: data!)
            print(usersResponse)
            DispatchQueue.main.async {
                completion(.success(usersResponse))
            }
        }.resume()
            
            
    }

    func getAllExposition(completion: @escaping(Result<ExpoResponse, ComunicationError>) -> Void){
         guard let url = URL(string: "http://100.24.228.237:10124/expositions/") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
    
        URLSession.shared.dataTask(with: url) { data, response, error in
            print(data!.count)
            let Response = try! JSONDecoder().decode(ExpoResponse.self, from: data!)
            print(Response)
            DispatchQueue.main.async {
                completion(.success(Response))
            }
        }.resume()
    }
    
    func getAllMarcoColection(completion: @escaping(Result<MarColectionResponse, ComunicationError>) -> Void){
        guard let url = URL(string: "http://100.24.228.237:10124/marcolections/") else {
            completion(.failure(.custom(errorMessage: "URL is not Correct")))
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            print(data!.count)
            let Response = try! JSONDecoder().decode(MarColectionResponse.self, from: data!)
            print(Response)
            DispatchQueue.main.async {
                completion(.success(Response))
            }
        }.resume()
    }
    
    func addReserva(titulo: String, username : String, fecha: Date, hora: String, cantPer: Int, completion: @escaping (Result<Bool, ComunicationError>) -> Void) {
            
            guard let url = URL(string: "http://100.24.228.237:10124/reservations/add") else {
                completion(.failure(.custom(errorMessage: "URL is not Correct")))
                return
            }
            
            let body = AddReservaRequestBody(titulo: titulo, usuario: username, fecha: fecha, hora: hora, canPer: cantPer)
            
            print(body)
            
            //Codigo para formatear la fecha antes de enviarla a la API
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            let encoder = JSONEncoder()
            encoder.dateEncodingStrategy = .formatted(formatter)
            
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            //request.httpBody = try? JSONEncoder().encode(body)
            request.httpBody = try? encoder.encode(body)  // con esta linea de c??digo puedes enviar la fecha formateada
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                guard let data = data, error == nil else {
                    completion(.failure(.custom(errorMessage: "No data")))
                    return
                }
                
                guard let AddReservaResponse = try? JSONDecoder().decode(AddReservaResponse.self, from: data) else {
                    completion(.failure(.connectionError))
                    return
                }
                
                /*guard let token = AddReservaResponse.success else {
                    completion(.failure(.connectionError))
                    return
                }*/
                
                completion(.success(true))
                
                
            }.resume()
        }
    
    func getReservas(username : String, completion: @escaping (Result<ReservasResponse, ComunicationError>) -> Void) {
            
            guard let url = URL(string: "http://100.24.228.237:10124/reservations/" + username) else {
                completion(.failure(.custom(errorMessage: "URL is not Correct")))
                return
            }
            print(url)
        
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

            let decoder = JSONDecoder()
            //decoder.keyDecodingStrategy = .convertFromSnakeCase
            decoder.dateDecodingStrategy = .formatted(formatter)
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                //let Response = try! JSONDecoder().decode(ReservasResponse.self, from: data!)
                let Response = try! decoder.decode(ReservasResponse.self, from: data!)
                print(Response)
                DispatchQueue.main.async {
                    completion(.success(Response))
                }
            }.resume()
                
            
        }}
