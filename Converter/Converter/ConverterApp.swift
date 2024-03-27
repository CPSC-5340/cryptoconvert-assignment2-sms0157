//
//  ConverterApp.swift
//  Converter
//
//  Created by Sabrina Summerfield on 3/20/24.
//

import SwiftUI

@main
struct ConverterApp: App {
    var body: some Scene {
        WindowGroup {
            Converter()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Converter")
                NavigationLink(destination: Converter()) {
                    Text("Currency Converter")
                }
                NavigationLink(destination: Crypto()) {
                    Text("Crypto Converter")
                }
            }
        }
    }
}
