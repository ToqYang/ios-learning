//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let title = sender.title(for: .normal)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.playSound(title)
        }
    }
    
    func playSound(_ soundName: String?) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
            print("Sound file not found.")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: soundURL)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("Error initializing AVAudioPlayer: \(error)")
        }
    }
}

