//
//  ContentView.swift
//  SwiftUI_ChallengeSolution
//
//  Created by star on 19.04.22.
//

import SwiftUI

struct RoundedNumber: ViewModifier {
    let backgroundColor: Color?
    func body(content: Content) -> some View {
        content
            .padding()
            .background(backgroundColor)
            .clipShape(Circle())
            .font(.headline)
            .foregroundColor(.black)
    }
}

extension View {
    func roundedNumber(backgroundColor: Color?) -> some View {
        self
            .modifier(RoundedNumber(backgroundColor: backgroundColor))
    }
}

struct ContentView: View {
    @State var buttonsBackground: [Color] = [.red, .green, .yellow, .purple, .orange, .pink, Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1))]
    private let alignments: [Alignment] = [.leading, .center, .trailing]
    
    var body: some View {
        VStack {
            ForEach(1...3, id: \.self) { index in
                Button(action: shuffleBackgroundsArray) {
                    Text("\(index)")
                        .roundedNumber(backgroundColor: buttonsBackground.randomElement())
                        .frame(width: 190, alignment: alignments[index - 1])
                }
            }
        }
        
//        VStack(spacing: 20.0) {
//            Button(action: shuffleBackgroundsArray) {
//                Text("1")
//                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
//                    .frame(width: 190, alignment: .leading)
//            }
//            Button(action: shuffleBackgroundsArray) {
//                Text("2")
//                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
//                    .frame(width: 190, alignment: .center)
//            }
//            Button(action: shuffleBackgroundsArray) {
//                Text("3")
//                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
//                    .frame(width: 190, alignment: .trailing)
//            }
//        } //VStack
        
    }
    
    func shuffleBackgroundsArray() {
        buttonsBackground.shuffle()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
