//
//  TopMoversItemView.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading){
            // MARK: Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // MARK: Coin info
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$20.330")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // MARK: Coin percentage change
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2))
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
