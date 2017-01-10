//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameState: GameState = .start
    
    @IBOutlet weak var playAgainLabel: UIButton!
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBAction func paperSelected(_ sender: UIButton) {
        play(user:.paper)
        rockButton.isHidden = true
        scissorsButton.isHidden = true
    }
    
    @IBAction func scissorsSelected(_ sender: UIButton) {
        play(user:.scissors)
        rockButton.isHidden = true
        paperButton.isHidden = true
    }
    
    @IBAction func rockSelected(_ sender: UIButton) {
        play(user:.rock)
        paperButton.isHidden = true
        scissorsButton.isHidden = true
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        gameState = .start
        updateView()
    }
    
    func play(user: Sign){
        let computerSign = randomSign()
        gameState = user.winner(computer: computerSign)
        updateView()
    }
    
    func updateView(){
        if gameState == .start {
            playAgainLabel.isHidden = true
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false

        } else {
            playAgainLabel.isHidden = false
            rockButton.isEnabled = false
            paperButton.isEnabled = false
            scissorsButton.isEnabled = false
        }
        if gameState == .win {
            gameStateLabel.text = "You Win!"
        }else if gameState == .lose {
            gameStateLabel.text = "You Lose!"
        }else if gameState == .draw{
            gameStateLabel.text = "It was a Tie!"
        } else {
            gameStateLabel.text = "Rock, Paper Scissors?"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

