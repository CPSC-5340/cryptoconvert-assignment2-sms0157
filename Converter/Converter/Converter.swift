//
//  ContentView.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/20/24.
//

import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = ConverterViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.listOfCards) { card in CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
                
            }
        }
        .onAppear {
            viewModel.fetchCards()
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Converter()
        }
    }

