//
//  ContentView.swift
//  SwiftUI_ChallengeSolution
//
//  Created by star on 19.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("1")
                .padding()
                .background(Color.red)
                .clipShape(Circle())
                .frame(width: 190, alignment: .leading)
            Text("2")
                .padding()
                .background(Color.yellow)
                .clipShape(Circle())
                .frame(width: 190)
            Text("3")
                .padding()
                .background(Color.green)
                .clipShape(Circle())
                .frame(width: 190, alignment: .trailing)
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
