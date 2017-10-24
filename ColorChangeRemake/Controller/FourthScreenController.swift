//
//  FourthScreenController.swift
//  ColorChangeRemake
//
//  Created by Heaps, Dane on 10/16/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class FourthScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    
    
    @IBOutlet weak var ButtonUn: UIButton!
    @IBOutlet weak var ButtonDeux: UIButton!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var playPause: UIButton!
    
    @IBAction func Switch(_ sender: Any) {
        switchImage()
    }
    
    private func playMusicFile()
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            ImageView.image = UIImage(named: "thingphotoUN")
        }
        else if (imageCounter == 1)
        {
            ImageView.image = UIImage(named: "thingphotoDEUX")
        }
        else if (imageCounter == 2)
        {
            ImageView.image = UIImage(named: "thingphotoTROIS")
        }
        
        imageCounter += 1
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "thingmusic")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                Slider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider() -> Void
    {
        Slider.value = Float ((soundPlayer?.currentTime)!)
    }
    @IBAction func slidingSound(_ sender: UISlider)
    {
        let seekTime = Double (Slider.value)
        soundPlayer?.currentTime = seekTime
    }
}


