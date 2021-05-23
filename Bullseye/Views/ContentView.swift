//
//  ContentView.swift
//  Bullseye
//
//  Created by user on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            // rgb(243, 248, 253)
            Color("BackgroundColor")
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .font(.largeTitle)
                    .bold()
                    .fontWeight(.black)
                    .kerning(-1.0)
                HStack {
                    Text("1")
                        .bold()
                        .fontWeight(.black)
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                        .fontWeight(.black)
                }
                .padding()
                Button(action: {
                    self.alertIsVisible = true
                }) {
                    Text("HIT ME")
                        .bold()
                        .font(.title3)
                }
                    .padding(20.0)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(21.0)
                
                    .alert(isPresented: $alertIsVisible, content: {
                    let roundedValue: Int = Int(sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message:Text("Theslider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton:.default(Text("Awesome!")))
                })


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
