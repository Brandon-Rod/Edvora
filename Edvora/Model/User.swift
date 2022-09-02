//
//  User.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import Foundation

struct User: Decodable, Identifiable {
    
    let userId: Int
    let name: String
    
    var id: Int { return userId }
    
}

struct UserMockData {
    
    static let sampleUser = User(userId: 0, name: "Brandon")
    static let users = [sampleUser, sampleUser]
    
}
