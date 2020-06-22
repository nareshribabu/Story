//
//  StoryBrain.swift
//  Story
//  Created by Nareshri Babu on 19/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//  All sounds were only used for learning purposes and do not belong to me.
//


import Foundation

struct StoryBrain {
    
    let storyBook = [
        Story(

            title: "You are all alone at home, it is a rainy night filled with howling wind and lightning. It is late into the night. You can't sleep so you open your window to get some fresh air. Suddenly, you see a strange shadow on the sidewalk near your house! Its looks like a person with two heads and four arms",
            choice1: "Go outside and check it out!", choice1Destination: 2,
            choice2: "Stay at home and ignore it", choice2Destination: 1
        ),
        Story(
            
            title: "Suddenly, the door bell rings! RINGGGGGG!",
            choice1: "I am just being paranoid, I'll open the door.", choice1Destination: 2,
            choice2: "No way in hell! I am going to hide under my bed", choice2Destination: 3
        ),
        Story(

            title: "You open the door, it is hard to see because of the darkness. The lightning lights up the sky for a brief second and you see a shape of a person with two heads and four arms. You wonder...could this be an alien? Or worse, a ghost?! The person speaks in a strange voice not quite human, 'Let us inside!'",
            choice1: "I should help someone in need! I'll let them inside.", choice1Destination: 5,
            choice2: "No way! I can't let some stranger in!", choice2Destination: 4
        ),
        Story(

            title: "You go hide under the bed and tremble. Downstairs, you hear the main door open...footsteps climb up towards your bedroom. The bedroom window opens up with a creak. Feet start coming towards the bed..but they are backwards! The creature starts to reach for you...and you faint out of fear...",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(

            title: "You scream 'no way!' and try to close the door on the shadowy figure's face. The figure suddenly rushes towards you with increadible speed. The last thing you will ever see are a gleaming pair of fangs.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "As the creature comes into the light of your house, you see its your parents who have come back from a vacation early. Your father was eating a burrito and talking at the same time, which is why his voice sounded not quite human. You all go inside and enjoy late night ice cream.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        if userChoice == storyBook[storyNumber].choice1 {
            
            storyNumber = storyBook[storyNumber].choice1Destination
            
        }
        else {
            storyNumber = storyBook[storyNumber].choice2Destination
            
        }
        
    }
    
    func getStoryTitle() -> String {
        return storyBook[storyNumber].title
    }
    
    func getChoice1() -> String {
        return storyBook[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return storyBook[storyNumber].choice2
    }
}
