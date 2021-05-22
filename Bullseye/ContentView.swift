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
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .font(.largeTitle)
                .bold()
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .bold()
                    .fontWeight(.black)
                Slider(value: .constant(50.0), in: 1.0...100.0)
                Text("100")
                    .bold()
                    .fontWeight(.black)
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
