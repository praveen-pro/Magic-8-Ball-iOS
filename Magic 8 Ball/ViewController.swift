//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Praveen J on 26/08/19.
//  Copyright © 2019 Praveen J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var currentBallIndex = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    func updateBall() {
        currentBallIndex = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[currentBallIndex])
    }

}

