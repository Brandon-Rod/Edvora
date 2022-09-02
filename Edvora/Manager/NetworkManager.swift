//
//  NetworkManager.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    static let baseURL = "https://assessment.api.vweb.app/"
    
    private let usersURL = baseURL + "users"
    private let decoder = JSONDecoder()
    
    private init() {
        
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
    }
    
    func getUsers(completed: @escaping (Result<[User], EdError>) -> Void) {
        
        guard let url = URL(string: usersURL) else {
            
            completed(.failure(.invalidURL))
            return
            
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
            
                completed(.failure(.unableToComplete))
                return
            
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                
                completed(.failure(.invalidResponse))
                return
                
            }

            guard let data = data else {
                
                completed(.failure(.invalidData))
                return
                
            }
            
            do {
                
                let decodedResponse = try self.decoder.decode([User].self, from: data)
                completed(.success(decodedResponse))
                
            } catch {
                
                completed(.failure(.invalidData))
                
            }
            
        }
            
        task.resume()
        
    }
    
}
