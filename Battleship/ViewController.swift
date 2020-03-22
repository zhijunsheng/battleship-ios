//
//  ViewController.swift
//  Battleship
//
//  Created by 刀剑神域 SAO project on 2019-04-21.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func fire(_ sender: UITapGestureRecognizer) {
        let finger = sender.location(in: boardView)
        let col: Int = Int((finger.x - boardView.orgX) / boardView.cellside)
        let row: Int = Int((finger.y - boardView.orgY) / boardView.cellside)
        print("(\(col), \(row))")
    }
}

