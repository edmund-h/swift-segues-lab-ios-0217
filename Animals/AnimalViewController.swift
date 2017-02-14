//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var myAnimal = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        emojiLabel.text = myAnimal
        //I always try to add a little something extra in every assignment.
        navigationItem.title = "???"
        textLabel.text = "Unknown Animal!"
        guard let animalDesc = animalDict[myAnimal]else{ return }
        textLabel.text = animalDesc
        navigationItem.title = animalDesc
    }
}
// i prefer dictionary lookup to switch case because it helps me keep a new concept fresh (been doing switch cases since 8th grade) and because I think it's cleaner!
fileprivate let animalDict = [
    "🐶": "Dog",
    "🐱": "Cat",
    "🐹": "Hamster",
    "🐭": "Mouse",
    "🐰": "Bunny",
    "🦊": "Fox",
    "🐻": "Bear",
    "🐼": "Panda",
    "🦁": "Lion",
    "🐨": "Koala",
    "🐯": "Tiger",
    "🐮": "Cow",
    "🐷": "Pig",
    "🐸": "Frog",
    "🐵": "Monkey",
    "🐙": "Octopus",
    "🐔": "Chicken",
    "🐴": "Horse",
    "🦄": "Unicorn"
]
