//
//  Player.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 12/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//


class Player {
    
    var name: String
    var cards: [Card]
    
    init(name: String) {
        self.name = name
        self.cards = [Card]()
    }
    
}
