//
//  ViewController.swift
//  ctavenne-hw1
//
//  Created by Cody Tavenner on 3/13/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit
struct Game{
    var headache:Int
    var pressureHead:Int
    var neckPain:Int
    var nausea:Int
    var dizziness:Int
    var vision:Int
    var balance:Int
    var light:Int
    var noise:Int
    var slow:Int
    var totalNum:Int
    var sScore:Int
    
    init(headache:Int, pressureHead:Int, neckPain:Int, nausea:Int, dizziness:Int, vision:Int, balance:Int, light:Int, noise:Int, slow:Int, totalNum:Int, sScore:Int)
    {
        self.headache = headache
        self.pressureHead = pressureHead
        self.neckPain = neckPain
        self.nausea = nausea
        self.dizziness = dizziness
        self.vision = vision
        self.balance = balance
        self.light = light
        self.noise = noise
        self.slow = slow
        self.totalNum = totalNum
        self.sScore = sScore
    }
}
class ViewController: UIViewController {

    @IBOutlet weak var head: UISegmentedControl!
    @IBOutlet weak var pressure: UISegmentedControl!
    @IBOutlet weak var neck: UISegmentedControl!
    @IBOutlet weak var vomit: UISegmentedControl!
    @IBOutlet weak var dizzy: UISegmentedControl!
    @IBOutlet weak var blur: UISegmentedControl!
    @IBOutlet weak var bal: UISegmentedControl!
    @IBOutlet weak var senLight: UISegmentedControl!
    @IBOutlet weak var senNoise: UISegmentedControl!
    @IBOutlet weak var feelSlow: UISegmentedControl!
    var total:Int = 0
    var severity:Int = 0
    var score:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var game:[Game] = []
    @IBAction func add(_ sender: UIButton) {
        if(head.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(pressure.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(neck.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(vomit.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(dizzy.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(blur.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(bal.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(senLight.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(senNoise.selectedSegmentIndex > 0)
        {
            total+=1
        }
        if(feelSlow.selectedSegmentIndex > 0)
        {
            total+=1
        }
        severity = head.selectedSegmentIndex + pressure.selectedSegmentIndex + neck.selectedSegmentIndex + vomit.selectedSegmentIndex + dizzy.selectedSegmentIndex
        score = blur.selectedSegmentIndex + bal.selectedSegmentIndex + senLight.selectedSegmentIndex + senNoise.selectedSegmentIndex + feelSlow.selectedSegmentIndex + severity
        let gameNum:Game = Game(headache:head.selectedSegmentIndex, pressureHead:pressure.selectedSegmentIndex, neckPain:neck.selectedSegmentIndex, nausea:vomit.selectedSegmentIndex, dizziness:dizzy.selectedSegmentIndex, vision:blur.selectedSegmentIndex, balance:bal.selectedSegmentIndex, light:senLight.selectedSegmentIndex, noise:senNoise.selectedSegmentIndex, slow:feelSlow.selectedSegmentIndex, totalNum:total, sScore:score)
        game.append(gameNum)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCompareView"
        {
            let des = segue.destination as! CompareViewController
            if(game.count == 0)
            {
                let alert = UIAlertController(title: "My Alert", message: "There is only one game added. Please add another", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
            }
            if(game.count == 1){
                des.choose = 1
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
            }
            else if(game.count == 2)
            {
                des.choose = 2
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
            }
            else if(game.count == 3)
            {
                des.choose = 3
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
                des.game3Total = game[2].totalNum
                des.game3Score = game[2].sScore
            }
            else if(game.count == 4)
            {
                des.choose = 4
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
                des.game3Total = game[2].totalNum
                des.game3Score = game[2].sScore
                des.game4Total = game[3].totalNum
                des.game4Score = game[3].sScore
            }
            else if(game.count == 5)
            {
                des.choose = 5
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
                des.game3Total = game[2].totalNum
                des.game3Score = game[2].sScore
                des.game4Total = game[3].totalNum
                des.game4Score = game[3].sScore
                des.game5Total = game[4].totalNum
                des.game5Score = game[4].sScore
            }
            print("Going to Compare View")
        }
        if segue.identifier == "toRiskView"
        {
            let des = segue.destination as! RiskViewController
            if(game.count < 1)
            {
                let alert = UIAlertController(title: "My Alert", message: "There is only one game added. Please add another", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
            }
            else if(game.count == 2)
            {
                des.choose = 2
                des.game1Total = game[0].totalNum
                des.game1Score = game[0].sScore
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
            }
            else if(game.count == 3)
            {
                des.choose = 3
                des.game2Total = game[1].totalNum
                des.game2Score = game[1].sScore
                des.game3Total = game[2].totalNum
                des.game3Score = game[2].sScore
            }
            else if(game.count == 4)
            {
                des.choose = 4
                des.game3Total = game[2].totalNum
                des.game3Score = game[2].sScore
                des.game4Total = game[3].totalNum
                des.game4Score = game[3].sScore
            }
            else if(game.count == 5)
            {
                des.choose = 5
                des.game4Total = game[3].totalNum
                des.game4Score = game[3].sScore
                des.game5Total = game[4].totalNum
                des.game5Score = game[4].sScore
            }
            print("Going to Risk View")
        }
    }
    
    @IBAction func returnedCompare(segue: UIStoryboardSegue)
    {
        print("Coming from Compare View")
    }
    
    @IBAction func returnedRisk(segue: UIStoryboardSegue)
    {
        print("Coming from Risk View")
    }
    
    
}

