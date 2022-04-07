//
//  ResultViewController.swift
//  RPS
//
//  Created by JT on 2022/4/7.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showUI(judgement: judgement)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var playerIcon: UILabel!
    @IBOutlet weak var playerSelection: UILabel!
    @IBOutlet weak var botSelection: UILabel!
    @IBOutlet weak var message: UILabel!
    
    var judgement: WinOrLoss!
    func showUI(judgement:WinOrLoss){
        let result: TypeOfResult = judgement.getResult()
        switch result {
        case .won:
            playerIcon.text = "🥳"
            message.text = "You Won!"
        case .lost:
            playerIcon.text = "😢"
            message.text = "You Lost."
        case .draw:
            playerIcon.text = "😳"
            message.text = "It's a draw."
        }
        transferIconToEmoji(judgement.yourSelection, botORplayer: "Player")
        transferIconToEmoji(judgement.botSelection, botORplayer: "Bot")
    }
    func transferIconToEmoji(_ sender:RPSc, botORplayer:String){
        if botORplayer == "Player"{
            switch sender {
            case .rock:
                playerSelection.text = "👊"
            case .paper:
                playerSelection.text = "🖐"
            case .scissors:
                playerSelection.text = "✌️"
            }
        }else{
            switch sender {
            case .rock:
                botSelection.text = "👊"
            case .paper:
                botSelection.text = "🖐"
            case .scissors:
                botSelection.text = "✌️"
            }
        }
        
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
