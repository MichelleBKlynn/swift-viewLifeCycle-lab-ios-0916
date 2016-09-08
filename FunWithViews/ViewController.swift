//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func dieButtonTapped(sender: AnyObject) {
       let diceRoll = randomDiceRoll()
        switch diceRoll {
        case 1:
            diceViewOne.hidden = false
            diceViewTwo.hidden = true
            diceViewThree.hidden = true
            diceViewFour.hidden = true
            diceViewFive.hidden = true
            diceViewSix.hidden = true
        
        case 2:
            diceViewOne.hidden = false
            diceViewTwo.hidden = false
            diceViewThree.hidden = true
            diceViewFour.hidden = true
            diceViewFive.hidden = true
            diceViewSix.hidden = true
            
        case 3:
            diceViewOne.hidden = false
            diceViewTwo.hidden = false
            diceViewThree.hidden = false
            diceViewFour.hidden = true
            diceViewFive.hidden = true
            diceViewSix.hidden = true
            
        case 4:
            diceViewOne.hidden = false
            diceViewTwo.hidden = false
            diceViewThree.hidden = false
            diceViewFour.hidden = false
            diceViewFive.hidden = true
            diceViewSix.hidden = true
            
        case 5:
            diceViewOne.hidden = false
            diceViewTwo.hidden = false
            diceViewThree.hidden = false
            diceViewFour.hidden = false
            diceViewFive.hidden = false
            diceViewSix.hidden = true
            
        case 6:
            diceViewOne.hidden = false
            diceViewTwo.hidden = false
            diceViewThree.hidden = false
            diceViewFour.hidden = false
            diceViewFive.hidden = false
            diceViewSix.hidden = false
            
        default:
            return print("error")
        }
        
        updateLabelWithRoll(diceRoll)
        
       
    }
    
    @IBOutlet weak var diceViewOne: UIView!
    @IBOutlet weak var diceViewTwo: UIView!
    @IBOutlet weak var diceViewThree: UIView!
    @IBOutlet weak var diceViewFour: UIView!
    @IBOutlet weak var diceViewFive: UIView!
    @IBOutlet weak var diceViewSix: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    
    override func viewDidLoad() {
        
        diceViewOne.hidden = true
        diceViewTwo.hidden = true
        diceViewThree.hidden = true
        diceViewFour.hidden = true
        diceViewFive.hidden = true
        diceViewSix.hidden = true

        labelOne.hidden = true
        labelTwo.hidden = true
        labelThree.hidden = true
        labelFour.hidden = true
        labelFive.hidden = true
        labelSix.hidden = true
        
        
        super.viewDidLoad()
    }
    
    
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.hidden {
            labelOne.text = diceScore
            labelOne.hidden = false
            
        } else if labelTwo.hidden {
            labelTwo.text = diceScore
            labelTwo.hidden = false
            
        } else if labelThree.hidden {
            labelThree.text = diceScore
            labelThree.hidden = false
            
        } else if labelFour.hidden {
            labelFour.text = diceScore
            labelFour.hidden = false
            
        } else if labelFive.hidden {
            labelFive.text = diceScore
            labelFive.hidden = false
            
        } else if labelSix.hidden {
            labelSix.text = diceScore
            labelSix.hidden = false
            
        }
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
}






//
//
// I think I need to do something like the following:
//
// func viewWillAppear() // make that reset the view back to blank, or the first initial view. I may not need to
// repeat this one if I can somehow set it to apply after each time someone pushes the button
//
// then
//
//  viewDidAppear() // after an action by the user (button push and I think also after viewWillAppear,
//  maybe make this a switch argument and set each case to be like "user rolls a random number first time"
//  "return Int, and display that as a label on Number View 1"
//
//
// func rearrangeDie() {
//  randomDiceRoll 
// switch {
//      case randomDiceRoll == 1
//
// CODE THAT SHOWS AND HIDES WHITE SQUARES
// }
//
// diceViewOne.hidden = true
// diceViewTwo.hidden = true
// diceViewThree.hidden = true
// diceViewFour.hidden = true
// diceViewFive.hidden = true
// diceViewSix.hidden = true
//
// labelOne.hidden = true
// labelTwo.hidden = true
// labelThree.hidden = true
// labelFour.hidden = true
// labelFive.hidden = true
// labelSix.hidden = true
//
// func updateScore() {
// CODE THAT UPDATES ONE OF THE SCORE LABELS
// }
//
// CALL THE ABOVE FUNC'S IN THE DIE BUTTON'S IB ACTION METHOD
//
//













