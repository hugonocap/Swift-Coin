//
//  AllCoinsView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack {
            Text("All Coins")
                .font(.headline)
            
            HStack {
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .padding(.horizontal)
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
