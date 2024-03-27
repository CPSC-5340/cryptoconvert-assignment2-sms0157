//
//  CurrencyItem.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/20/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel
    
    var body: some View {
            if card.isFront {
                FrontCurrencyItem(card: card.cardContent)
            } else {
                BackCurrencyItem(card: card.cardContent)
            }
        }
    }

    
    struct CurrencyItem_Previews: PreviewProvider {
        static var previews: some View {
            CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
        }
    }
    
    struct FrontCurrencyItem: View {
        
        var card: CurrencyItemModel
        
        var body: some View {
            VStack {
                HStack {
                    Text(card.countryFlag)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text(card.currencyCode)
                }
            }
            .frame(width: 130, height: 130)
            .padding()
            .background(.gray)
            .cornerRadius(6)
        }
    }
    
    struct BackCurrencyItem: View {
        
        var card: CurrencyItemModel
        
        var body: some View {
            VStack {
                HStack {
                    Text(card.currencyName)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text(String(card.multiplier))
                }
            }
            .frame(width: 130, height: 130)
            .padding()
            .background(.gray)
            .cornerRadius(6)
        }
    }
    

