//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundsLabel: UILabel!
    @IBAction func catButtonTapped(_ sender: UIButton) {
        let sound = SimpleSound(named: "meow")
        animalSoundsLabel.text = "Meow!"
        sound.play()
    }
    @IBAction func dogButtonTapped(_ sender: UIButton) {
        animalSoundsLabel.text = "Woof!"
        let sound = SimpleSound(named: "woof")
        sound.play()
    }
    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundsLabel.text = "Moo"
        let sound = SimpleSound(named: "moo")
        sound.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

