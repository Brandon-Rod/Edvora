//
//  UserCell.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            PlaceHolderView()
            
            VStack(alignment: .leading, spacing: 2) {
                
                Text(user.name)
                    .font(.title3)
                    .foregroundColor(.purple)
                    .lineLimit(2)
                
                Text("User ID: \(user.userId)")
                
            }
            .frame(width: 90)
            
        }
        
    }
    
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: UserMockData.sampleUser)
    }
}
