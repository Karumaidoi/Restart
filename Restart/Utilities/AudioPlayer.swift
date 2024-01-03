//
//  AudioPlayer.swift
//  Restart
//
//  Created by Alex Maina on 03/01/2024.
//

import Foundation
import AVFoundation
import MediaPlayer

// Instantiating the AVAUDIOPLAYER
var audioPlayer: AVAudioPlayer?

func playSound(sound:String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play();
        } catch {
            print("Could not play the audio file")
        }
    }
    
}
