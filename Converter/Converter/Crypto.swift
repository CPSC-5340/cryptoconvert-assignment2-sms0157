//
//  Crypto.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/23/24.
//

import SwiftUI


struct Crypto: View {
    @StateObject private var viewModel = CryptoViewModel()
    
    
    
    var body : some View {
        HStack {
            Text("Bitcoin")
                .font(Font.headline.bold())
                .frame(width: 60, height: 300)
            
            TextField("Amount", text: $viewModel.bitcoin)
                .padding()
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
        }
        
            List(viewModel.values, id: \.0) { currency, value in
                HStack {
                    Text("\(currency)")
                    Spacer()
                    Text("\(String(format: "%.1f", value))")
                }
            }
        }
    }

#Preview {
    Crypto()
}

