//
//  AudioPlayer.swift
//  Restart
//
//  Created by Rifqi Muhammad Aziz on 24/03/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// params: filename, extension
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
