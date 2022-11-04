//
//  CoinRawView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI

struct CoinRawView: View {
    var body: some View {
        HStack {
            // MARK: Market cap rank
             Text("1")
                .font(.caption)
                .foregroundColor(.gray )
            
            // MARK: Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // MARK: Coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .padding(.leading, 4)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("BTC")
                    .padding(.leading, 6 )
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // MARK: Coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("$20.330.00")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("-5.60%")
                    .font(.caption)
                    .foregroundColor(.red)
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinRawView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRawView()
    }
}
