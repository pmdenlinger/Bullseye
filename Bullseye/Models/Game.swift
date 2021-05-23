//
//  Game.swift
//  Bullseye
//
//  Created by user on 5/22/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        var difference: Int = self.target - sliderValue
        if difference < 0 {
            difference *= -1
        }
        let awardedPoints: Int = 100 - difference
        return awardedPoints
    }
}
