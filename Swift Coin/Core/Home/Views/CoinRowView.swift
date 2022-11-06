//
//  CoinRowView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI
import Kingfisher

struct CoinRawView: View {
    var coin: Coin
    var body: some View {
        HStack {
            // MARK: Market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray )
            
            // MARK: Image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // MARK: Coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .padding(.leading, 4)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text(coin.symbol.uppercased() )
                    .padding(.leading, 6 )
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // MARK: Coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//struct CoinRawView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRawView()
//    }
//}
