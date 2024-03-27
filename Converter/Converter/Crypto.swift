//
//  Crypto.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/23/24.
//

import SwiftUI


struct Crypto: View {
    @ObservedObject var viewModel = ConverterViewModel()
    
    @Binding var bitcoin: Double
    
    
    var body : some View {
        HStack {
            Text("Bitcoin")
                .font(Font.headline.bold())
        
            TextField("", value: $bitcoin, format: .number)
                .padding()
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            
            
            List {
                Text("USD: \(bitcoin * 69979.80,specifier: "%.2f")")
                Text("")
                
            }
        }
        }
    }
    


#Preview {
    Crypto(bitcoin: Binding<Double>)
}
