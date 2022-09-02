//
//  SelectedImageView.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

struct SelectedImageView: View {
    
    var selectedImage: UIImage
    
    var body: some View {
        
        Image(uiImage: selectedImage)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: 50, height: 50)
            .overlay(Circle().stroke(Color.purple, lineWidth: 2))
            .shadow(radius: 3)
        
    }
    
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(selectedImage: UIImage(systemName: "plus")!)
    }
}
