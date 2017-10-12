//
//  ViewController.swift
//  ColorChangeRemake
//
//  Created by Heaps, Dane on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var colorTool  : ColorTools = ColorTools()
    
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
        view.backgroundColor = colorTool.createRandomColor()
        
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

