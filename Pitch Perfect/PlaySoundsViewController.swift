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
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
        audioPlayer.prepareToPlay()


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
    
    @IBAction func playChipmunkAudio(sender: AnyObject) {
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
