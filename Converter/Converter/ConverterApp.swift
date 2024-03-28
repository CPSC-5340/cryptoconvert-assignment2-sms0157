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
            NavigationView {
                VStack(spacing: 10) {
                    Text("Conversion App")
                        .font(.largeTitle)
                    List {
                        NavigationLink(destination: Converter()) {
                            Text("World Currency Exchange")
                        }
                        NavigationLink(destination: Crypto()) {
                            Text("Crypto Exchange")
                        }
                        
                    }
                }
            }
            
        }
    }
}
