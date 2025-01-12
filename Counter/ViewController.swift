//
//  ViewController.swift
//  Counter
//
//  Created by Travka Andrey on 09.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var clickPlusButton: UIButton!
    
    @IBOutlet private weak var clickMinusButton: UIButton!
    
    @IBOutlet private weak var clickResetButton: UIButton!
    
    @IBOutlet private weak var historyUITextView: UITextView!
    
    @IBOutlet private weak var counterLabel: UILabel!
    
    private var counter: Int = 0
    
    internal override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "\(counter)"
        
        historyUITextView.text = "История изменений:"
    }

    @IBAction private func buttonPlusDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().dateFormat())]: значение изменено на +1"
    }
    
    @IBAction private func buttonMinusDidTap(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
            historyUITextView.text = historyUITextView.text + "\n [\(Date().dateFormat())]: попытка уменьшить значение счётчика ниже 0"
        }
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().dateFormat())]: значение изменено на -1"
    }
    
    @IBAction private func buttonResetDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = "Значение счётчика: \n \(counter)"
        historyUITextView.text = historyUITextView.text + "\n [\(Date().dateFormat())]: значение сброшено"
    }

}

private extension Date {
    func dateFormat(format: String = "YYYY-MM-DD HH:mm:ss") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
