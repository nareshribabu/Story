//
//  ViewController.swift
//  Story
//  Created by Nareshri Babu on 19/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//  All sounds were only used for learning purposes and do not belong to me.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //create an instance of StoryBrain
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.storyBook[0].title
        choice1Button.setTitle(storyBrain.storyBook[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyBook[0].choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userInput = sender.currentTitle!
        
        storyBrain.nextStory(userChoice: userInput)

        
        updateUI()
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
}

