//
//  ViewController.swift
//  Destini
//
//  Created by Amarjit Singh on 29/11/2018.
//  Copyright (c) 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var storyNum = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        updateStory(buttonPressed: sender.tag)
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    
    func updateStory(buttonPressed: Int){
        switch storyNum{
            case 1: if(buttonPressed==1){
                        updateUI(whichStory: story3, whichBtn1: answer3a, whichBtn2: answer3b)
                        storyNum=3
                    }
                    else if(buttonPressed==2){
                        updateUI(whichStory: story2, whichBtn1: answer2a, whichBtn2: answer2b)
                        storyNum=2
                    }
            case 2: if(buttonPressed==1){
                        updateUI(whichStory: story3, whichBtn1: answer3a, whichBtn2: answer3b)
                        storyNum=3
                    }
                    else if(buttonPressed==2){
                        updateUI(whichStory: story4, whichBtn1: "Story Over, Restart?", whichBtn2: "")
                        storyNum=4
                        bottomButton.isHidden = true
                    }
            case 3: if(buttonPressed==1){
                        updateUI(whichStory: story6, whichBtn1: "Story Over, Restart?", whichBtn2: "")
                        storyNum=6
                        bottomButton.isHidden = true
                    }
                    else if(buttonPressed==2){
                        updateUI(whichStory: story5, whichBtn1: "Story Over, Restart?", whichBtn2: "")
                        storyNum=5
                        bottomButton.isHidden = true
                    }
            case 4: updateUI(whichStory: story1, whichBtn1: answer1a, whichBtn2: answer1b)
            case 5: updateUI(whichStory: story1, whichBtn1: answer1a, whichBtn2: answer1b)
            case 6: updateUI(whichStory: story1, whichBtn1: answer1a, whichBtn2: answer1b)
            default: print("Error")
        }
    }
    
    func updateUI(whichStory: String, whichBtn1: String, whichBtn2: String){
        if(whichStory==story1){
            bottomButton.isHidden=false
            storyNum=1
        }
        storyTextView.text = whichStory
        topButton.setTitle(whichBtn1, for: .normal)
        bottomButton.setTitle(whichBtn2, for: .normal)
    }


}

