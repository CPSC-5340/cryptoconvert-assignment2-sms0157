//
//  CryptoViewModel.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/27/24.
//

import Foundation

class CryptoViewModel: ObservableObject {
    @Published var bitcoin: String = ""
    
    let conversions = [ "US Dollar": 23450.0, "ETH": 14.3, "Tether": 23450.0, "BNB": 77.2, "USD Coin": 23454.0, "XRP": 62113.0 ]
    
    var values: [(String, Double)] {
        guard let btc = Double(bitcoin) else { return [("US Dollar", 0.0), ("ETH", 0.0), ("Tether", 0.0), ("BNB", 0.0), ("USD Coin", 0.0), ("XRP", 0.0)] }
        return [("US Dollar", 23450.0 * btc), ("ETH", 14.3 * btc), ("Tether", 23450.0 * btc), ("BNB", 77.2 * btc), ("USD Coin", 23454.0 * btc), ("XRP", 62113.0 * btc)]
    }
}

