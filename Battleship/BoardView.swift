//
//  BoardView.swift
//  Battleship
//
//  Created by 刀剑神域 SAO project on 2019-04-21.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    
    let cols: Int = 11
    let rows: Int = 11
    
    let originX: CGFloat = 30
    let originY: CGFloat = 30
    
    let cellH: CGFloat = 20
    let cellW: CGFloat = 20
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: originX, y: originY))
        path.addLine(to: CGPoint(x: originX + cellW, y: originY + cellH))
        
        path.stroke()
        
//        let piece0: [Int] = [6, 7]
//        let piece1: [Int] = [3, 9]
//
//        drawPiece(locationX: piece0[0], locationY: piece0[1], isBlack: true)
//        drawPiece(locationX: piece1[0], locationY: piece1[1], isBlack: false)
        
        let pieces: [[Int]] = [
            [6, 7], // pieces[0], 6: pieces[0][0], 7: pieces[0][1]
            [3, 9], // pieces[1], 3: pieces[1][0], 9: pieces[1][1]
            [0, 0], // pieces[2], 0: pieces[2][0], 0: pieces[2][1]
        ]
        
//        drawPiece(locationX: pieces[0][0], locationY: pieces[0][1], isBlack: true)
//        drawPiece(locationX: pieces[1][0], locationY: pieces[1][1], isBlack: false)
//        drawPiece(locationX: pieces[2][0], locationY: pieces[2][1], isBlack: true)
        
        for i in 0 ..< pieces.count { // exception: IndexOutOfBound
            drawPiece(locationX: pieces[i][0], locationY: pieces[i][1], isBlack: true)
            
            // pieces.count = 3
            // pieces[2].count = 2
            // pieces[0][0].count = doesn't make sense
        }
        
    }
    
//    public void ships() {
//    for (int i = 0;i < 10; ++i) {
//    matrix[i] = new int[10];
//    output[i] = new char[10];
//    for (int j = 0;j < 10; ++j) {
//    matrix[i][j] = -1;
//    output[i][j] = 'o';
//    }
//    }
//    Random random = new Random();
//    int ships = 0;
//    while
    
    
    
    
    func drawPiece(locationX: Int, locationY: Int, isBlack: Bool) {
        
        let path = UIBezierPath(arcCenter: CGPoint(x: originX + cellW * CGFloat(locationX), y: originY + cellH * CGFloat(locationY)), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        if isBlack {
            UIColor.black.setFill()
        } else {
            UIColor.white.setFill()
        }
        
        path.fill()
    }
    
    func drawgrid(){
        
        
        
        
    }
    //        var pieces = [[Piece]] = []
    //
    //        override func draw (_ rect: CGFloat) {
    //
    //            for <#item#> in <#items#> {
    //                <#code#>
    //            }
    //        }
    
    
    
    
    
    
}
