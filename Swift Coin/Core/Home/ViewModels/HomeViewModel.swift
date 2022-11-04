//
//  HomeViewModel.swift
//  Swift Coin
//
//  Created by Hugo on 4.11.22.
//

import Foundation

class HomeViewModel: ObservableObject {
    
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
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
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
            print("DEBUG: Data \(data)")
            
        }
    }
    
}
