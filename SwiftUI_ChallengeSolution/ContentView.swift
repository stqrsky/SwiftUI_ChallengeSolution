//
//  ContentView.swift
//  SwiftUI_ChallengeSolution
//
//  Created by star on 19.04.22.
//

import SwiftUI

struct RoundedNumber: ViewModifier {
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .padding()
            .background(backgroundColor)
            .clipShape(Circle())
            .font(.headline)
    }
}

extension View {
    func roundedNumber(backgroundColor: Color) -> some View {
        self
            .modifier(RoundedNumber(backgroundColor: backgroundColor))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("1")
                .roundedNumber(backgroundColor: .red)
                .frame(width: 190, alignment: .leading)
            Text("2")
                .roundedNumber(backgroundColor: .yellow)
                .frame(width: 190)
            Text("3")
                .roundedNumber(backgroundColor: .green)
                .frame(width: 190, alignment: .trailing)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
