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
    
    var player : AVAudioPlayer!
    
    
    @IBOutlet weak var c: UIButton!
    
    @IBOutlet weak var d: UIButton!
    
    @IBOutlet weak var e: UIButton!
    
    @IBOutlet weak var f: UIButton!
    
    @IBOutlet weak var g: UIButton!
    
    @IBOutlet weak var a: UIButton!
    
    @IBOutlet weak var b: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playJingle()
    }
    
    func playJingle() {
        pressE()
        pressedButton(button: self.e)
        pressedButton(button: self.g)
        pressedButton(button: self.c)
        pressedButton(button: self.d)
        pressedButton(button: self.e)
        pressF()
        pressE()
        pressedButton(button: self.e)
        pressedButton(button: self.e)
        pressedButton(button: self.d)
        pressedButton(button: self.d)
        pressedButton(button: self.e)
        pressedButton(button: self.g)
        pressE()
        pressE()
        pressedButton(button: self.e)
        pressedButton(button: self.g)
        pressedButton(button: self.c)
        pressedButton(button: self.d)
        pressedButton(button: self.e)
        pressF()
        pressedButton(button: self.e)
        pressedButton(button: self.e)
        pressedButton(button: self.e)
        pressedButton(button: self.e)
        pressedButton(button: self.g)
        pressedButton(button: self.g)
        pressedButton(button: self.f)
        pressedButton(button: self.d)
        pressedButton(button: self.c)
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              sender.alpha = 1.0
          }
    }
    
    func playSound(_ title:String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func pressedButton(button : UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.sendActions(for: .touchUpInside)
          }
    }
    
    func pressE() {
        pressedButton(button: self.e)
        pressedButton(button: self.e)
        pressedButton(button: self.e)
    }
    
    func pressF() {
        pressedButton(button: self.f)
        pressedButton(button: self.f)
        pressedButton(button: self.f)
        pressedButton(button: self.f)
        pressedButton(button: self.f)
    }
    
    
}

