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
            CardView()
            CardView()
            CardView()
        }.padding()
            .foregroundColor(.red)
    }
    }
struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill()
                shape.foregroundColor(.white)
                shape.stroke(lineWidth: 5).fill(.orange)
                Text("〽️")
                    .font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
    }
}
