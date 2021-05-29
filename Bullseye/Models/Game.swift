//
//  Game.swift
//  Bullseye
//
//  Created by user on 5/22/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(self.target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
    }
}
