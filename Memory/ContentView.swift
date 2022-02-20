//
//  ContentView.swift
//  Memory
//
//  Created by Joseph DeWeese on 2/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
        }
    }
        
    }


        struct CardView: View {
            var body: some View {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 3)
                    Text("Hello, world!")
                       
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
