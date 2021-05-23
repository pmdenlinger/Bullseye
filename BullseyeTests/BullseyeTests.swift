//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by user on 5/23/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual (game.points(sliderValue: 50), 999)
            
        }
    

   

}
