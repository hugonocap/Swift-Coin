//
//  TopMoversItemView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    var coin: Coin
    var body: some View {
        VStack(alignment: .leading){
            // MARK: Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // MARK: Coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // MARK: Coin percentage change
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2))
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
