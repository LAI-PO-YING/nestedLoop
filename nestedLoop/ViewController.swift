//
//  ViewController.swift
//  nestedLoop
//
//  Created by Lai Po Ying on 2021/5/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var shapeSegmentedControl: UISegmentedControl!
    
    let contents: [String] = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐵"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func segementedControlChange(_ sender: UISegmentedControl) {
        showLabel.text = "🐶"
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        sender.value = sender.value.rounded()
        let count = Int(sender.value)
        if shapeSegmentedControl.selectedSegmentIndex == 0 {
            var content: String = ""
            var index = 0
            for _ in 1...count {
                for _ in 1...count {
                    content += contents[index]
                }
                content += "\n"
                index += 1
            }
            showLabel.text = content
        }
        else if shapeSegmentedControl.selectedSegmentIndex == 1 {
            var content: String = ""
            var index = 0
            for a in 1...count {
                for _ in 1...a {
                    content += contents[index]
                }
                content += "\n"
                index += 1
            }
            showLabel.text = content
        }
        else if shapeSegmentedControl.selectedSegmentIndex == 2 {
            var content: String = ""
            var index = 0
            for a in 1...count {
                for _ in a..<count {
                    content += "🍎"
                }
                let b = (a * 2) - 1
                for _ in 1...b {
                    content += contents[index]
                }
                content += "\n"
                index += 1
            }
            showLabel.text = content
        }
        else {
            var content: String = ""
            var index = 0
            var red = 0
            var green = count + 1
            for a in 1...count * 2 - 1 {
                if a <= count {
                    green -= 1
                    red += 1
                }
                else {
                    green += 1
                    red -= 1
                }
                for _ in 1..<green {
                    content += "🍎"
                }
                for _ in 1...red*2-1 {
                    content += contents[index]
                }
                content += "\n"
                index += 1
            }
            showLabel.text = content
        }
    }
}

