//
//  ViewController.swift
//  NinjaGold
//
//  Created by caesar shia on 5/11/17.
//  Copyright © 2017 Code School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var winnings=0
    var currentscore = 0
    @IBOutlet weak var scorelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        scorelabel.text="score:\(String(currentscore))"
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var earning: [UILabel]!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        var winnings=0
        if sender.tag == 1{
            winnings=Int(arc4random_uniform(UInt32(11)+10))
            currentscore += winnings
            earning[0].text="You earned: \(String(winnings))"
        }
        else if sender.tag == 2{
            winnings=Int(arc4random_uniform(UInt32(6)+5))
            currentscore += winnings
            earning[1].text="You earned: \(String(winnings))"
        }
        else if sender.tag == 3{
            winnings=Int(arc4random_uniform(UInt32(4)+3))
            currentscore += winnings
            earning[2].text="You earned: \(String(winnings))"
        }
        else if sender.tag == 4{
            winnings=(-1*Int(arc4random_uniform(UInt32(101)))+50)
            currentscore += winnings
            earning[3].text="You earned: \(String(winnings))"
        }
        scorelabel.text="score: \(String(currentscore))"
    }

    @IBAction func Resetscore(_ sender: UIButton) {
        currentscore=0
        scorelabel.text="score: \(String(currentscore))"
    }

}

