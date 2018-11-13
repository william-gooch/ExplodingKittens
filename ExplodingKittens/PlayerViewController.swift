//
//  PlayerViewController.swift
//  ExplodingKittens
//
//  Created by Gooch, William (NPTL) on 12/10/2018.
//  Copyright © 2018 Gooch, William (NPTL). All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var playerName: UITextField!
    
    var pname: String = ""
    var delegate: isAbleToReceiveData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        playerName.text = pname
    }
    
    @IBAction func onOK(_ sender: Any) {
        delegate?.editPlayerName(pname: playerName.text!)
        self.dismiss(animated: true, completion: nil)
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
