//
//  SoundPlayer.swift
//  MyTaskManager
//
//  Created by Manny Alvarez on 11/06/2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?


func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("💿Sound error with file: \(sound) and type: \(type)💿 ")
        }
    } else {
        print("💿Sound error with file: \(sound) and type: \(type)💿 ")
    }
    
}
