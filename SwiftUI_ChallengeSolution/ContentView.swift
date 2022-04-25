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
    var buttonsBackground: [Color] = [.red, .green, .yellow, .purple, .orange, .pink, Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1))]
    
    var body: some View {
        VStack(spacing: 20.0) {
            Button(action: {
                    print("didTap 1")
            }) {
                Text("1")
                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
                    .frame(width: 190, alignment: .leading)
            }
            Button(action: {
                    print("didTap 2")
            }) {
                Text("2")
                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
                    .frame(width: 190, alignment: .center)
            }
            Button(action: {
                    print("didTap 3")
            }) {
                Text("3")
                    .roundedNumber(backgroundColor: buttonsBackground.randomElement())
                    .frame(width: 190, alignment: .trailing)
            }
            
        } //VStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
