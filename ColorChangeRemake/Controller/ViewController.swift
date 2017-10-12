//
//  ViewController.swift
//  ColorChangeRemake
//
//  Created by Heaps, Dane on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Press(_ sender: UIButton)
    {
        if (Button.backgroundColor == .orange)
        {
            Button.backgroundColor = .black
        }
        else
        {
            Button.backgroundColor = .orange
        }
        view.backgroundColor = createRandomColor()
        
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    @IBOutlet weak var firstSwitch: UISwitch!
    
    
    @IBAction func `switch`(_ sender: Any)
    {
        if firstSwitch.isOn
        {
            Button.isHidden = true
        }
        else
        {
            Button.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

