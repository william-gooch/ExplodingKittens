//
//  Card.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 09/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//

import Foundation

class Card {
    
    var name: String
    var action: () -> Void
    
    init(name: String, action: @escaping () -> Void) {
        self.name = name
        self.action = action
    }
    
    static let explodingKitten = Card(name: "Exploding Kitten", action: {
        Game.game.explode()
    })
    
    static let reverse = Card(name: "Reverse", action: {
        Game.game.reversed = !Game.game.reversed
        Game.game.turnEnd()
    })
    
    static let skip = Card(name: "Skip", action: {
        Game.game.turnEnd()
    })
    
}
