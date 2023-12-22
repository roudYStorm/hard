//
//  ViewController.swift
//  hard
//
//  Created by Yulianna on 22.12.2023.
//

import UIKit

class ViewController: UIViewController {
     var counter = 0
       
        var localDate: String = {
           let dateFormatter = DateFormatter()
           dateFormatter.dateStyle = DateFormatter.Style.short
           dateFormatter.timeStyle = DateFormatter.Style.short
           return dateFormatter.string(from: Date()).description
       }()
        
    
    @IBOutlet weak var MainLabel: UILabel!
    @IBOutlet weak var MainView: UITextView!
    
    override func viewDidLoad() {
        MainView.isEditable = false
        MainView.text = "История изменений:\n\n"
        super.viewDidLoad()
    }
    
    @IBAction func plusAction(_ sender: Any) {
        
        counter += 1
        var logsString = localDate
        logsString.append(":\nзначение изменено на +1\n\n")
        
        MainLabel.text = counter.description
        MainView.text.append(logsString)
    }
    
    @IBAction func resetAction(_ sender: Any) {
        counter = 0
        var logsString = localDate
        logsString.append(":\nзначение сброшено\n\n")
        
        MainLabel.text = counter.description
        
        MainView.text.append(logsString)
        
    }
    @IBAction func minusAction(_ sender: Any) {
        counter -= 1
        var logsString = localDate
        logsString.append(":\nзначение изменено на -1\n\n")
        
        MainLabel.text = counter.description
        
        MainView.text.append(logsString)
        
    }
    
}

