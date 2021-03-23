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
    
   
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 55
        yellowLightView.layer.cornerRadius = 55
        greenLightView.layer.cornerRadius = 55
        
        startButton.layer.cornerRadius = 10
        
        
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)

    
    
        
    }
    
    
    
}

