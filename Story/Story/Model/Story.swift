//
//  Story.swift
//  Story
//  Created by Nareshri Babu on 19/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//  All sounds were only used for learning purposes and do not belong to me.
//

import Foundation

struct Story {
    let title : String
    let choice1 : String
    let choice1Destination : Int
    let choice2 : String
    let choice2Destination : Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
        
    }
}
