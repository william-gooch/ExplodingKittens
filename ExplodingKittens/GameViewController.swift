//
//  GameViewController.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 30/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var playerTurnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        playerTurnLabel.text = Game.game.players[Game.game.currentPlayer].name
    }

    @IBAction func onReverse(_ sender: Any) {
        Game.game.deck[1].action()
        
        playerTurnLabel.text = Game.game.players[Game.game.currentPlayer].name
    }
    
    @IBAction func onSkip(_ sender: Any) {
        Game.game.deck[2].action()
        
        playerTurnLabel.text = Game.game.players[Game.game.currentPlayer].name
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
