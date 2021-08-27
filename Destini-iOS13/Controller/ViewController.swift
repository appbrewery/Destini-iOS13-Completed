//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    
    
//    var story0 = "You see a fork in the road."
//
//    var choice1 = "Take a left."
//
//    var choice2 = "Take a right."
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let storyDestination = storyBrain.nextStory(sender.currentTitle!)

        updateUI(storyDestination)
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)


    }
    
    func updateUI(_ storyDestination : Int) {
        storyLabel.text = storyBrain.stories[storyDestination].title
        choice1Button.setTitle(storyBrain.stories[storyDestination].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyDestination].choice2, for: .normal)
    }


}

