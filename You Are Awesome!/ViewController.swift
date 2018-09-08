//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by J. Lozano on 8/30/18.
//  Copyright © 2018 J. Lozano. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 5
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue : Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String){
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if sound.data is not  a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        } else {
            // if reading in the NSDataAsset didn't work, tell the developer/report the error
            print("ERROR: file\(soundName) didn't load")
        }
    }
    

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You Brighten My Day!",
                        "You are da bomb!",
                        "Hey fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!", "I can't wait to download your app!"]
//        messageLabel.text = messages.randomElement()!
  //  var newIndex = -1
        //Show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Get a random number to use in our soundName file
        //Play a sound
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
      
        

    }
    

}
