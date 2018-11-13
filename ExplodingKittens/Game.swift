//
//  Game.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 09/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//

import Foundation

class Game {
    
    var deck = [Card]()
    var players = [Player]()
    
    var turnOrder = [Int]()
    var currentTurn = 0
    var currentPlayer = 0
    
    var reversed = false
    
    func explode() {
        print("BOOOOOM!")
    }
    
    init() {
        deck.append(Card.explodingKitten)
        deck.append(Card.reverse)
        deck.append(Card.skip)
    }
    
    func startGame() {
        turnOrder = Array(0..<players.count)
        currentTurn = 0
        currentPlayer = turnOrder[currentTurn]
    }
    
    func turnEnd() {
        if !reversed { currentTurn += 1 }
        if reversed { currentTurn -= 1 }
        currentPlayer = turnOrder[currentTurn]
    }
    
    static let game: Game = Game()
    
}
