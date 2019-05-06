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
    var shotgunModel = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.reloadButton.addTarget(self, action: #selector(self.fireButtonTapped), for: .touchUpInside)
        shotgunModel.gunFireSound()
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            mainView.reloadButton.backgroundColor = UIColor.red
            mainView.reloadButton.setTitle("RELOAD", for: .normal)
            shotgunModel.shootAudio.play()
        }
    }
    
    @objc func fireButtonTapped() {
        if mainView.reloadButton.backgroundColor == UIColor.red {
            mainView.reloadButton.backgroundColor = UIColor.green
            mainView.reloadButton.setTitle("FIRE", for: .normal)
            shotgunModel.reloadAudio.play()
        }
    }    
}
