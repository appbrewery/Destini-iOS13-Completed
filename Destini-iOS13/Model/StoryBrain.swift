    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Angela Yu on 08/08/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //
    
    import Foundation
    
    struct StoryBrain {
        
        //Tracking the current story number. This is used to pick out the right story from the stories Array.
        var storyNumber = 0
        
        //All the story data moved over.
        let stories = [
            Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
            Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
            Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        //Mutating function as we're changing the storyNumber property.
        mutating func nextStory(userChoice: String) {
            
            //All logic is still exactly the same as before, now moved to storyBrain to act as a seperate manager of data.
            let currentStory = stories[storyNumber]
            
            if userChoice == currentStory.choice1 {
                storyNumber = 1
            } else if userChoice == currentStory.choice2 {
                storyNumber = 2
            }
        }
        
    }
    
    
