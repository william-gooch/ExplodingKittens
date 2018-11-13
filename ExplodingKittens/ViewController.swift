//
//  ViewController.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 09/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//

import UIKit

protocol isAbleToReceiveData {
    func editPlayerName(pname: String)  //data: string is an example parameter
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, isAbleToReceiveData {
    
    @IBOutlet weak var playerView: UITableView!
    
    var selPlayer: String = ""
    var selIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.game.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.playerView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = Game.game.players[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selPlayer = Game.game.players[indexPath.row].name
        self.selIndex = indexPath.row
        self.performSegue(withIdentifier: "popupSegue", sender: self)
    }
    
    @IBAction func onAddPlayer(_ sender: Any) {
        Game.game.players.append(Player(name: "Unnamed Player"))
        playerView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Game.game.players.append(Player(name: "Player 1"))
        Game.game.players.append(Player(name: "Player 2"))
        playerView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        playerView.tableFooterView = UIView()
        playerView.delegate = self
        playerView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popupSegue" {
            let dest = segue.destination as! PlayerViewController
            dest.pname = self.selPlayer
            dest.delegate = self
        }
        
        else if segue.identifier == "gameSegue" {
            // prepare for start game.
            Game.game.startGame()
            print("game segue")
        }
    }
    
    func editPlayerName(pname: String) {
        Game.game.players[selIndex].name = pname
        selPlayer = pname
        playerView.reloadData()
    }
}
