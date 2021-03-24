//
//  ViewController.swift
//  HW2.1 Ex2
//
//  Created by Kalabishka Ivan on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    
    @IBOutlet var startButtonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = 55
        
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 55
        
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 55
        
        startButtonView.layer.cornerRadius = 10
    }
    
    enum LightColours {
        case redLight
        case yellowLight
        case greenLight
    }
    
    var currentLight = LightColours.redLight
    
    @IBAction func startButtonPressed() {
        startButtonView.setTitle("Next", for: .normal)
        
        func changeColourLight(for lights: LightColours) {
            switch currentLight {
            case .redLight:
                greenLightView.alpha = 0.3
                redLightView.alpha = 1
                currentLight = .yellowLight
            case .yellowLight:
                redLightView.alpha = 0.3
                yellowLightView.alpha = 1
                currentLight = .greenLight
            case .greenLight:
                yellowLightView.alpha = 0.3
                greenLightView.alpha = 1
                currentLight = .redLight
            }
        }
        changeColourLight(for: currentLight)
    }
}

