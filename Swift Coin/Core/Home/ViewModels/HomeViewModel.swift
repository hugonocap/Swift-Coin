//
//  HomeViewModel.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    // this function call "fetchCoinData" and complete all stuff below
    init() {
        fetchCoinData()
    }
    
    // request data (download data)
    func fetchCoinData() {
        
        // link
        let urlString: String = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        // converting into an actual url object
        guard let url = URL(string: urlString) else { return }
        
        // request to url and then download all data
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            // error
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            // this function indicate us about getting a successful response from API
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            // makes sure we actually get a data and if we don't  we'll just stop the function with "return"
            guard let data = data else { return }
            
            // JSON Decoder (getting data and converting to array of Coin)
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins()
                }
            } catch let error {
                print("DEBUG: Failed to decode with error: \(error)")
            }
            
        }
        //! REALLY IMPORTANT!!! Without this thing the "URLSession" will never run and get data!
        .resume()
    }
    
    // At the top of list will be coin that changed the most in the last 24h
    func configureTopMovingCoins() {
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H})
        // how many containers in the list
        self.topMovingCoins = Array(topMovers.prefix(10))
    }
    
}
