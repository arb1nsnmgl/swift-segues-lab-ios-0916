//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    @IBOutlet weak var animalEmoji: UILabel!
    
    @IBOutlet weak var animalLabel: UILabel!
    
    // let animals = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]

    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        if let fruit = fruit {
//            fruitEmojiLabel?.text = fruit
//            
//            let fruitName = emojiToName(fruit)
//            fruitNameLabel?.text = fruitName
//            navigationItem.title = fruitName
//        }
        
        
        if let animal = animal {
            animalLabel.text = animal
            animalEmoji.text = emoji(of: animal)
            navigationItem.title = emoji(of: animal)
        }
        
    
    }

    
    func emoji(of animal: String) -> String {
        
        switch animal {
            case "Dog": return "🐶"
            case "Cat": return "🐱"
            case "Mouse": return "🐭"
            case "Hamster": return "🐹"
            case "Bunny": return "🐰"
            case "Panda": return "🐼"
            case "Lion": return "🦁"
            case "Pig": return "🐷"
            case "Frog": return "🐸"
            case "Octopus": return "🐙"
            default: return ""
        }
        
    }
    
    
    
    
    
    
}
