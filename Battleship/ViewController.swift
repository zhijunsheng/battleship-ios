//
//  ViewController.swift
//  Battleship
//
//  Created by Peter Shi on 2020-02-25.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seaView: SeaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func hitDetecter(_ sender: UITapGestureRecognizer) {
        let loc = sender.location(in: seaView)
        let side = seaView.bounds.width / 11
        let procLoc = CGPoint(x: floor(loc.x / side - 1), y: floor(10 - loc.y / side))
        print(procLoc)
    }
    
}

