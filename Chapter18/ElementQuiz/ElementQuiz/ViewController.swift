//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let elements = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elements[currentElementIndex]
    }
    @IBAction func showNextElement(_ sender: UIButton) {
        if currentElementIndex + 1 < elements.count{
            currentElementIndex += 1
        } else {
            currentElementIndex = 0
        }
        updateElement()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateElement() {
        answerLabel.text = "?"
        let elementName = elements[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }

    
}

