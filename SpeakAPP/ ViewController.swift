//
//  ViewController.swift
//  SpeakAPP
//
//  Created by fred fu on 2021/1/17.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var inputSpeak: UITextField!
    @IBOutlet weak var tryRate: UISlider!
    @IBOutlet weak var tryPitchMultiplier: UISlider!
    @IBOutlet weak var tryVolum: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func speak(_ sender: Any) {
        
        let mySpeak = AVSpeechUtterance(string: inputSpeak.text!)
        
        let arabicSpeechSynthesizer = AVSpeechSynthesizer()
        
        mySpeak.voice = AVSpeechSynthesisVoice(language: "zh-Tw")
        
        mySpeak.rate = tryRate.value
        
        mySpeak.pitchMultiplier = tryPitchMultiplier.value
        
        mySpeak.volume = tryVolum.value
                    
        arabicSpeechSynthesizer.speak(mySpeak)
        
    }
}

