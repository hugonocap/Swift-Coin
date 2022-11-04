//
//  AllCoinsView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .padding()
                .font(.headline)
            
            HStack {
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .padding(.horizontal)
            .font(.caption)
            .foregroundColor(.gray)
            
            ScrollView {
                VStack {
                    ForEach(0 ..< 20, id: \.self) { _ in
                        CoinRawView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
