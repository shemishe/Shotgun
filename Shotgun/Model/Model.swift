//
//  Model.swift
//  Shotgun
//
//  Created by Sherman Shi on 5/5/19.
//  Copyright © 2019 Sherman Shi. All rights reserved.
//

import Foundation
import AVFoundation

class Model {
    
    var reloadAudio: AVAudioPlayer = AVAudioPlayer()
    var shootAudio: AVAudioPlayer = AVAudioPlayer()
    
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
