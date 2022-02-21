////  Memory
//
//  Created by Joseph DeWeese on 2/19/22.
//

import SwiftUI

struct ContentView: View {
    //Properties...
    @State var emojis = ["〽️","👊🏽","😂","🤷","💃🏾","🧏🏽‍♀️","👑","💍","🪖","🎓","🧳", "🙅🏻", "🧟‍♀️","🧞‍♂️","🧜🏽‍♀️"]
    @State var emojiCount = 15
    
    
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.red)
            }
            .padding()
            HStack {
                remove
                Spacer()
                add
            }
            .padding()
            .font(.largeTitle)
            
        }
        .padding(.horizontal)
        .foregroundColor(.blue)
    }
    var remove: some View {
        Button {
            if emojiCount > 1  {
            emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
            }
        }
    var add: some View {
        Button {
            if emojiCount < emojis.count {
            emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
            }
        }
}

struct CardView: View {
    //Properties...
    var content: String
    @State var isFaceUp: Bool = false
    
    
    
    var body: some View {
        
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill()
                shape.foregroundColor(.white)
                shape.strokeBorder(lineWidth:3)
                Text(content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
