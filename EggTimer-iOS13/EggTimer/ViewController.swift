//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let timeDuration = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondPassed = 0
    
    @IBAction func typeEgg(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        totalTime = timeDuration[hardness]!
        progressBar.progress = 0.0
        self.secondPassed = 0
        titleLabel.text = hardness
        
        
        print("Enter")
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.secondPassed < self.totalTime {
                self.secondPassed += 1
                self.progressBar.progress = Float(self.secondPassed) / Float(self.totalTime)
                print("Seconds passed: \(self.secondPassed)")
            } else {
                timer.invalidate()
                self.titleLabel.text = "Done"
                
                let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                self.player = try! AVAudioPlayer(contentsOf: url!)
                self.player.play()
            }
        }
        
        // Ensure the timer fires even when the app is in background (for iOS)
        RunLoop.current.add(timer, forMode: .common)
    }
    
}
