//
//  BoardView.swift
//  Battleship
//
//  Created by Halwong on 2020/2/23.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    let cellside: CGFloat = 70
    let orgX: CGFloat = 30
    let orgY: CGFloat = 30
    let cols: Int = 10
    let rows: Int = 10
    
    override func draw(_ rect: CGRect) {
        drawBoard()
    }
    
    // carrier, battlership, cruiser, submarine, destroyer
    
    func drawBoard() {
        let pencil = UIBezierPath()
        for i in 0 ..< cols + 1 {
            pencil.move(to: CGPoint(x: orgX + cellside * CGFloat(i), y: orgY))
            pencil.addLine(to: CGPoint(x: orgX + cellside * CGFloat(i), y: orgY + cellside * CGFloat(rows)))
        }
        
        for i in 0 ..< rows + 1 {
            pencil.move(to: CGPoint(x: orgX, y: orgY + cellside * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: orgX + cellside * CGFloat(rows), y: orgY + cellside * CGFloat(i)))
        }
        pencil.stroke()
    }
}
