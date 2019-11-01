//
//  RiskViewController.swift
//  ctavenne-hw1
//
//  Created by Cody Tavenner on 3/13/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class RiskViewController: UIViewController {
    var game1Total:Int = 0
    var game1Score:Int = 0
    var game2Total:Int = 0
    var game2Score:Int = 0
    var game3Total:Int = 0
    var game3Score:Int = 0
    var game4Total:Int = 0
    var game4Score:Int = 0
    var game5Total:Int = 0
    var game5Score:Int = 0
    var choose:Int = 0
    
    @IBOutlet weak var pic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if(choose == 2)
        {
            if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) < 10)
            {
                pic.image = UIImage(named: "green.svg")
            }
            else if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) >= 10)
            {
                pic.image = UIImage(named: "yellow.png")
            }
            else if(abs(game2Total-game1Total) >= 3 || abs(game2Score-game1Score) >= 15)
            {
                pic.image = UIImage(named: "red.png")
            }
        }
        else if(choose == 3)
        {
            if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) < 10)
            {
                pic.image = UIImage(named: "green.svg")
            }
            else if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) >= 10)
            {
                pic.image = UIImage(named: "yellow.png")

            }
            else if(abs(game3Total-game2Total) >= 3 || abs(game3Score-game2Score) >= 15)
            {
                pic.image = UIImage(named: "red.png")

            }
        }
        else if(choose == 4)
        {
            if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) < 10)
            {
                pic.image = UIImage(named: "green.svg")
            }
            else if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) >= 10)
            {
                pic.image = UIImage(named: "yellow.png")

            }
            else if(abs(game4Total-game3Total) >= 3 || abs(game4Score-game3Score) >= 15)
            {
                pic.image = UIImage(named: "red.png")

            }
        }
        else if(choose == 5)
        {
            if(abs(game5Total-game4Total) < 3 && abs(game5Score-game4Score) < 10)
            {
                pic.image = UIImage(named: "green.svg")
            }
            else if(abs(game5Total-game4Total) < 3 && abs(game5Score-game4Score) >= 10)
            {
                pic.image = UIImage(named: "yellow.png")

            }
            else if(abs(game5Total-game4Total) >= 3 || abs(game5Score-game4Score) >= 15)
            {
                pic.image = UIImage(named: "red.png")

            }
        }
        // Do any additional setup after loading the view.
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
