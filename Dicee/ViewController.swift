//
//  ViewController.swift
//  Dicee
//
//  Created by Anurag Singh on 9/21/17.
//  Copyright © 2017 Anurag Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    let diceArray = ["dice1", "dice2" ,"dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDice()
      
    }
    func changeDice(){
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[randomDice1])
        diceImageView2.image = UIImage(named: diceArray[randomDice2])
        
    }
  
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDice()
    }
    

}

