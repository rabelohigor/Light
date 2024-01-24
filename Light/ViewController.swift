//
//  ViewController.swift
//  Light
//
//  Created by Higor | Colaborativa on 19/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lightStatus: UILabel!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightStatus.text = "Tap anywhere to turn off the light."
        } else {
            view.backgroundColor = .black
            lightStatus.text = "Tap anywhere to turn on the light."
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

