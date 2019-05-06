//
//  ViewController.swift
//  Shotgun
//
//  Created by Sherman Shi on 5/4/19.
//  Copyright © 2019 Sherman Shi. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    var mainView: MainView { return self.view as! MainView }

    var reloadAudio: AVAudioPlayer = AVAudioPlayer()
    var shootAudio: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.reloadButton.addTarget(self, action: #selector(self.fireButtonTapped), for: .touchUpInside)
        gunFireSound()
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            mainView.reloadButton.backgroundColor = UIColor.red
            mainView.reloadButton.setTitle("RELOAD", for: .normal)
            shootAudio.play()
        }
    }
    
    @objc func fireButtonTapped() {
        if mainView.reloadButton.backgroundColor == UIColor.red {
            mainView.reloadButton.backgroundColor = UIColor.green
            mainView.reloadButton.setTitle("FIRE", for: .normal)
            reloadAudio.play()
        }
    }
    
    func gunFireSound() {
        let reloadPath = Bundle.main.path(forResource: "shotgunreload", ofType: "mp3")
        do {
            reloadAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: reloadPath!))
        }
        catch {
            print(error)
        }
        
        let shootPath = Bundle.main.path(forResource: "shotgunshoot", ofType: "mp3")
        do {
            shootAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: shootPath!))
        }
        catch {
            print(error)
        }

    }
    
}
