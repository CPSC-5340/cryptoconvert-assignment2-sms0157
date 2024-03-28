//
//  ConvertModel.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/21/24.
//

import Foundation

struct ConvertModel : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : CurrencyItemModel
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double
}
