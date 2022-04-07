//
//  WinOrLoss.swift
//  RPS
//
//  Created by JT on 2022/4/7.
//

import Foundation
struct WinOrLoss{
    let yourSelection: RPSc
    let botSelection: RPSc = BotSelection().theSelection!
    func getResult() -> TypeOfResult{
        let ys = yourSelection.rawValue
        let bs = botSelection.rawValue
        
        if (ys - bs) == 1 || (ys - bs) == -2{
            return TypeOfResult.won
        }else if (ys - bs) == -1 || (ys - bs) == 2{
            return TypeOfResult.lost
        }else{
            return TypeOfResult.draw
        }
    }
    init(youSelection: RPSc) {
        self.yourSelection = youSelection
    }
}
