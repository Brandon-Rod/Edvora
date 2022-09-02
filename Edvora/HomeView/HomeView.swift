//
//  ContentView.swift
//  Edvora
//
//  Created by Brandon Rodriguez on 9/1/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeVM = HomeViewModel()
    
    private var gridView: some View {
        
        ScrollView {
            
            LazyVGrid(columns: homeVM.columns) {
                
                ForEach(homeVM.users) { user in
                    
                    UserCell(user: user)

                }
                
            }
            .padding(.vertical)
            
        }
        
    }
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            HeaderView(isShowingPhotoPicker: $homeVM.isShowingPhotoPicker, image: $homeVM.image)
                .padding(.top)
                .padding(.horizontal)
            
            gridView
            
        }
        .background(Color(.secondarySystemBackground))
        .onAppear { homeVM.getUsers() }
        .sheet(isPresented: $homeVM.isShowingPhotoPicker) {
            
            PhotoPicker(image: $homeVM.image)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
