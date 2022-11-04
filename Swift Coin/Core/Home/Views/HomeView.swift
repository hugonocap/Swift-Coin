//
//  HomeView.swift
//  Swift Coin
//
//  Created by Hugo on 3.11.22.
//

import SwiftUI

struct HomeView: View {
    // We put our observable object into "viewModel" variable
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: Top movers view
                TopMoversView()
                
                Divider()
                
                // MARK: All coins View
                AllCoinsView()
                
            }
            // MARK: Title
            .navigationTitle("Live Prices")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
