//
//  SecondScreenController.swift
//  ColorChangeRemake
//
//  Created by Heaps, Dane on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
class SecondScreenController :UIViewController
{
    lazy var colorTool :ColorTools = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
}
