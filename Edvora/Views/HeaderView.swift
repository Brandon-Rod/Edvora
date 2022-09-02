//
//  HeaderView.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var isShowingPhotoPicker: Bool
    @Binding var image: Data
    
    var body: some View {
        
        HStack {
            
            Text("Edvora")
                .font(.largeTitle)
                .foregroundColor(.purple)
            
            Spacer()
            
            Button {
                
                isShowingPhotoPicker = true
                
            } label: {
                
                if let selectedImage = UIImage(data: image) {
                    
                    SelectedImageView(selectedImage: selectedImage)
                    
                } else {
                    
                    PlaceHolderView()
                    
                }
                
            }
            
        }
        
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(isShowingPhotoPicker: .constant(false), image: .constant(Data()))
    }
}
