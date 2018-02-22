//
//  ViewController.swift
//  FilmFest
//
//  Created by Fanny Chien on 21/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import UIKit
import ChameleonFramework

class MainViewController: UIViewController {
 
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = GradientColor(.topToBottom, frame: self.view.frame, colors: [UIColor.flatSkyBlue, UIColor.flatPowderBlue])
        
        
    }


}

