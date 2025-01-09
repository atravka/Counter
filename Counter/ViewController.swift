//
//  ViewController.swift
//  Counter
//
//  Created by Travka Andrey on 09.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickPlusButton: UIButton!
    
    @IBOutlet weak var clickMinusButton: UIButton!
    
    @IBOutlet weak var clickResetButton: UIButton!
    
    @IBOutlet weak var historyUITextView: UITextView!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "\(counter)"
        
        historyUITextView.text = "История изменений:"
    }

    @IBAction func buttonPlusDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().printMyFormat())]: значение изменено на +1"
    }
    
    @IBAction func buttonMinusDidTap(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
            historyUITextView.text = historyUITextView.text + "\n [\(Date().printMyFormat())]: попытка уменьшить значение счётчика ниже 0"
        }
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().printMyFormat())]: значение изменено на -1"
    }
    
    @IBAction func buttonResetDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().printMyFormat())]: значение сброшено"
    }
    
}

extension Date {
    func printMyFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-DD HH:mm:ss"
        return dateFormatter.string(from: self)
    }
}
