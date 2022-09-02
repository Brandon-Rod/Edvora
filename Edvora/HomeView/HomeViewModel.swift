//
//  HomeViewModel.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    @Published var users: [User] = []
    @Published var isShowingPhotoPicker = false
    @Published var image: Data = Data()
    
    let columns: [GridItem] = [
        
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    /// Retrieves Users from the API.
    func getUsers() {
        
        NetworkManager.shared.getUsers { result in
            
            DispatchQueue.main.async {
                
                switch result {
                    
                case .success(let users):
                    self.users = users
                
                case .failure(let error):
                    print(error.localizedDescription)
                    
                }
                
            }
            
        }
        
    }
    
}
