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
    
    @IBAction func Switch(_ sender: Any) {
        switchImage()
    }
    
    private func switchImage()
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
}


