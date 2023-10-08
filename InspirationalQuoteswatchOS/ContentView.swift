//
//  ContentView.swift
//  Watch App
//
//  Created by Farial Mahmod on 10/6/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
@ObservedObject var displayingQuote = QuotesAPI()
    
    var body: some View {
        
        Text("Inspirational Quotes")
            .font(.headline)
            .foregroundColor(.teal)
            .bold()
        
        Spacer()
        Spacer()
        
        ScrollView {
            
            VStack(alignment: .center){
                Text("\"" + displayingQuote.quote + "\"").foregroundColor(.blue).fixedSize(horizontal: false, vertical: true)
            }.padding(.bottom, 17)
            
            
            Spacer()
            Spacer()
            
            Button(action: {
                
                displayingQuote.getQuotes()
                
            }) {
                Text("More").frame(width: 47, height: 47)
            }.buttonStyle(BorderedButtonStyle(tint: .red))
                .frame(width: 47, height: 47)
            .foregroundColor(.red)
            .cornerRadius(65)
        }
    }
}


