//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by NevenRakonic on 25/04/15.
//  Copyright (c) 2015 Neven Rakonić. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var fileURL = NSURL(fileURLWithPath: filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
            audioPlayer.enableRate = true
            audioPlayer.prepareToPlay()
        } else {
            println("file didn't load")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        audioPlayer.stop()
    }
    @IBAction func slowButton(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.play()
        
    }
    
    @IBAction func fastButton(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 2
        audioPlayer.play()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
