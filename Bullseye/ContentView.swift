//
//  ContentView.swift
//  Bullseye
//
//  Created by user on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50.0), in: 1.0...100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit Me!")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
