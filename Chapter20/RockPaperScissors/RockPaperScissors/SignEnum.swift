//
//  SignEnum.swift
//  RockPaperScissors
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)


func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0{
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}


enum Sign {
    case rock
    case paper
    case scissors
    
    func winner(computer: Sign) -> GameState{
        switch (self, computer){
        case (.rock,.rock),(.paper,.paper), (.scissors, .scissors):
            return .draw
        case (.rock, .paper), (.paper,.scissors) ,(.scissors, .rock):
            return .lose
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .win
        }
    }
}
