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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        //Calls nextStory in the storyBrain and sends over the title of the button that was chosen by the user.
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        
        //Now delegating all the data fetching to the storyBrain.
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}
































