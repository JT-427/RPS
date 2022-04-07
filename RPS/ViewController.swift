//
//  ViewController.swift
//  RPS
//
//  Created by JT on 2022/4/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var thisRPS = RPSc.allCases
    func judge(position: Int) -> WinOrLoss{
        return WinOrLoss(youSelection: thisRPS[position])
    }
    
    @IBSegueAction func selectRock(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.judgement = judge(position: 0)
        return controller
    }
    @IBSegueAction func selectPaper(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.judgement = judge(position: 1)
        return controller
    }
    @IBSegueAction func selectScissors(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.judgement = judge(position: 2)
        return controller
    }
    
}

