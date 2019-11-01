//
//  CompareViewController.swift
//  ctavenne-hw1
//
//  Created by Cody Tavenner on 3/13/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class CompareViewController: UIViewController {
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
    
    @IBOutlet weak var g1tot: UILabel!
    @IBOutlet weak var g1score: UILabel!
    @IBOutlet weak var g2tot: UILabel!
    @IBOutlet weak var g2score: UILabel!
    @IBOutlet weak var g2overall: UILabel!
    @IBOutlet weak var g3tot: UILabel!
    @IBOutlet weak var g3score: UILabel!
    @IBOutlet weak var g3overall: UILabel!
    @IBOutlet weak var g4tot: UILabel!
    @IBOutlet weak var g4score: UILabel!
    @IBOutlet weak var g4overall: UILabel!
    @IBOutlet weak var g5total: UILabel!
    @IBOutlet weak var g5score: UILabel!
    @IBOutlet weak var g5overall: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if(choose == 1)
        {
            g1tot.text=String(game1Total)
            g1score.text=String(game1Score)
        }
        else if(choose == 2)
        {
            
            g1tot.text=String(game1Total)
            g1score.text=String(game1Score)
            g2tot.text=String(game2Total)
            g2score.text=String(game2Score)
            if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) < 10)
            {
                g2overall.text = "No Difference"
            }
            else if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) >= 10)
            {
                g2overall.text = "Unsure"
            }
            else if(abs(game2Total-game1Total) >= 3 || abs(game2Score-game1Score) >= 15)
            {
                g2overall.text = "Very Different"
            }
        }
        else if(choose == 3)
        {
            g1tot.text=String(game1Total)
            g1score.text=String(game1Score)
            g2tot.text=String(game2Total)
            g2score.text=String(game2Score)
            if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) < 10)
            {
                g2overall.text = "No Difference"
            }
            else if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) >= 10)
            {
                g2overall.text = "Unsure"
            }
            else if(abs(game2Total-game1Total) >= 3 || abs(game2Score-game1Score) >= 15)
            {
                g2overall.text = "Very Different"
            }
            g3tot.text=String(game3Total)
            g3score.text=String(game3Score)
            if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) < 10)
            {
                g3overall.text = "No Difference"
            }
            else if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) >= 10)
            {
                g3overall.text = "Unsure"
            }
            else if(abs(game3Total-game2Total) >= 3 || abs(game3Score-game2Score) >= 15)
            {
                g3overall.text = "Very Different"
            }
        }
        else if(choose == 4)
        {
            g1tot.text=String(game1Total)
            g1score.text=String(game1Score)
            g2tot.text=String(game2Total)
            g2score.text=String(game2Score)
            if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) < 10)
            {
                g2overall.text = "No Difference"
            }
            else if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) >= 10)
            {
                g2overall.text = "Unsure"
            }
            else if(abs(game2Total-game1Total) >= 3 || abs(game2Score-game1Score) >= 15)
            {
                g2overall.text = "Very Different"
            }
            g3tot.text=String(game3Total)
            g3score.text=String(game3Score)
            if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) < 10)
            {
                g3overall.text = "No Difference"
            }
            else if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) >= 10)
            {
                g3overall.text = "Unsure"
            }
            else if(abs(game3Total-game2Total) >= 3 || abs(game3Score-game2Score) >= 15)
            {
                g3overall.text = "Very Different"
            }
            g4tot.text=String(game4Total)
            g4score.text=String(game4Score)
            if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) < 10)
            {
                g4overall.text = "No Difference"
            }
            else if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) >= 10)
            {
                g4overall.text = "Unsure"
            }
            else if(abs(game4Total-game3Total) >= 3 || abs(game4Score-game3Score) >= 15)
            {
                g4overall.text = "Very Different"
            }
        }
        else if(choose == 5)
        {
            g1tot.text=String(game1Total)
            g1score.text=String(game1Score)
            g2tot.text=String(game2Total)
            g2score.text=String(game2Score)
            if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) < 10)
            {
                g2overall.text = "No Difference"
            }
            else if(abs(game2Total-game1Total) < 3 && abs(game2Score-game1Score) >= 10)
            {
                g2overall.text = "Unsure"
            }
            else if(abs(game2Total-game1Total) >= 3 || abs(game2Score-game1Score) >= 15)
            {
                g2overall.text = "Very Different"
            }
            g3tot.text=String(game3Total)
            g3score.text=String(game3Score)
            if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) < 10)
            {
                g3overall.text = "No Difference"
            }
            else if(abs(game3Total-game2Total) < 3 && abs(game3Score-game2Score) >= 10)
            {
                g3overall.text = "Unsure"
            }
            else if(abs(game3Total-game2Total) >= 3 || abs(game3Score-game2Score) >= 15)
            {
                g3overall.text = "Very Different"
            }
            g4tot.text=String(game4Total)
            g4score.text=String(game4Score)
            if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) < 10)
            {
                g4overall.text = "No Difference"
            }
            else if(abs(game4Total-game3Total) < 3 && abs(game4Score-game3Score) >= 10)
            {
                g4overall.text = "Unsure"
            }
            else if(abs(game4Total-game3Total) >= 3 || abs(game4Score-game3Score) >= 15)
            {
                g4overall.text = "Very Different"
            }
            g5total.text=String(game5Total)
            g5score.text=String(game5Score)
            if(abs(game5Total-game4Total) < 3 && abs(game5Score-game4Score) < 10)
            {
                g5overall.text = "No Difference"
            }
            else if(abs(game5Total-game4Total) < 3 && abs(game5Score-game4Score) >= 10)
            {
                g5overall.text = "Unsure"
            }
            else if(abs(game5Total-game4Total) >= 3 || abs(game5Score-game4Score) >= 15)
            {
                g5overall.text = "Very Different"
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
