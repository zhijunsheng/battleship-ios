//
//  SeaView.swift
//  Battleship
//
//  Created by Peter Shi on 2020-02-25.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class SeaView: UIView {
    let cols = 10
    let rows = 10
    let nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    let chars = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    override func draw(_ rect: CGRect) {
        let side = bounds.width / CGFloat(cols + 1)
        let grid = UIBezierPath()
        for i in 0...cols {
            grid.move(to: CGPoint(x: CGFloat(i) * side, y: 0))
            grid.addLine(to: CGPoint(x: CGFloat(i) * side, y: bounds.height))
        }
        
        for j in 0...rows {
            grid.move(to: CGPoint(x: 0, y: CGFloat(j) * side))
            grid.addLine(to: CGPoint(x: bounds.width, y: CGFloat(j) * side))
        }
        #colorLiteral(red: 0.2266962757, green: 0.6384310788, blue: 1, alpha: 1).setStroke()
        grid.lineWidth = 2.5
        grid.stroke()
        for i in 1...cols {
            for j in 0..<rows {
                UIBezierPath(arcCenter: CGPoint(x: CGFloat(i) * side + side / 2, y: CGFloat(j) * side + side / 2), radius: side / 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
            }
        }
        
        for i in 0..<cols {
            let paragraphStyle = NSMutableParagraphStyle()
            let attributes = [
                NSAttributedString.Key.paragraphStyle: paragraphStyle,
                NSAttributedString.Key.foregroundColor: UIColor.white,
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 0.710681691304348 * side),
                ]
            let attributedString = NSAttributedString(string: nums[nums.count - (i + 1)], attributes: attributes)
            let stringRect = CGRect(x: 0 + side / 4, y: CGFloat(i) * side, width: side, height: side)
            attributedString.draw(in: stringRect)
        }
        
        for i in 0..<cols {
            let paragraphStyle = NSMutableParagraphStyle()
            let attributes = [
                NSAttributedString.Key.paragraphStyle: paragraphStyle,
                NSAttributedString.Key.foregroundColor: UIColor.white,
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 0.710681691304348 * side),
                ]
            let attributedString = NSAttributedString(string: chars[i], attributes: attributes)
            let stringRect = CGRect(x: side + (CGFloat(i) * side + side / 4), y: bounds.height - side, width: side, height: side)
            attributedString.draw(in: stringRect)
        }
    }
}

/*  ___
 © |__|
   /___\
 */
