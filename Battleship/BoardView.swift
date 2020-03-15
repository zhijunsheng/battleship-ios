//
//  BoardView.swift
//  Battleship
//
//  Created by Halwong on 2020/2/23.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    let cellside: CGFloat = 40
    let orgX: CGFloat = 80
    let orgY = 90
    var col: Int = -1
    
    override func draw(_ rect: CGRect) {
        col = Int((bounds.width - orgX) / cellside)
        
    }
    
    func drawBoard()  {
        let pencil = UIBezierPath()
        for i in 0 ..< col {
            
        }
    }

}
