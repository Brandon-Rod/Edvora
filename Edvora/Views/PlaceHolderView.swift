//
//  PlaceHolderView.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

struct PlaceHolderView: View {
    
    var body: some View {
        
        Image("Placeholder")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 50, height: 50)
            .overlay(Circle().stroke(Color.purple, lineWidth: 2))
            .shadow(radius: 3)
        
    }
    
}

struct PlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceHolderView()
    }
}
