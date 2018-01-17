//
//  ViewController.swift
//  Dice
//
//  Created by Apple on 09/01/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomnumberIndex1:Int = 0
    var randomnumberIndex2:Int = 0
    
    var diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]

    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var dicneImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDiceRoll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        randomDiceRoll()
    }
    
    func randomDiceRoll()
    {   randomnumberIndex1 = Int(arc4random_uniform(6))
        randomnumberIndex2 = Int(arc4random_uniform(6))
        
        diceImageOne.image = UIImage(named: diceArray[randomnumberIndex1])
        dicneImageTwo.image = UIImage(named: diceArray[randomnumberIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomDiceRoll()
    }
}






