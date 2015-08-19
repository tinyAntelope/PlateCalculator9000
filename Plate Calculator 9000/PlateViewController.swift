//
//  ViewController.swift
//  Plate Calculator 9000
//
//  Created by Philip Seligman on 8/10/15.
//  Copyright (c) 2015 tiny antelope. All rights reserved.
//

import UIKit

class PlateViewController: UIViewController {
    
    override func viewDidLoad() {
        PlateMath.platesOwned.standard = [35,25,5,2.5, 10, 45]
        PlateMath.bar = 33.0
        PlateMath.platesOwned.standard = PlateMath().deleteObject(35.0, fromArray: PlateMath.platesOwned.standard)
        
        println(PlateMath.platesOwned.standard)
    }
    
}

