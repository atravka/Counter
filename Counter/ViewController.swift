//
//  ViewController.swift
//  Counter
//
//  Created by Travka Andrey on 09.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "\(counter)"
        
        clickButton.backgroundColor = UIColor.lightGray
        clickButton.tintColor = UIColor.white
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \n \(counter)"
    }
    
}

