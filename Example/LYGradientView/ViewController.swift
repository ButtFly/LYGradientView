//
//  ViewController.swift
//  LYGradientView
//
//  Created by ButtFly on 12/25/2019.
//  Copyright (c) 2019 ButtFly. All rights reserved.
//

import UIKit
import LYGradientView

class ViewController: UIViewController {

    let gView = LYGradientView(frame: .zero)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(gView)
        
        gView.frame = view.bounds
        gView.colors = [.green, .red]
        gView.locations = [0, 1]
        gView.startPoint = CGPoint(x: 0.5, y: 0.2)
        gView.endPoint = CGPoint(x: 0.5, y: 0.8)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gView.frame = view.bounds
    }

}

