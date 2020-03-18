//
//  Sea.swift
//  Battleship
//
//  Created by Peter Shi on 2020-03-06.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Sea: CustomStringConvertible {
   
    var ships: [Ship] = []
    
    func cDeploy() {
        
    }
    
    func isThisLocationUseless(loc: [Point]) -> Bool {
        for point in loc {
            if pieceOn(x: point.x, y: point.y) != nil {
                return true
            }
        }
        return false
    }
    
    mutating func initC() {
        let shipLengths = [5, 4, 3, 3, 2]
        let shipTypes: [Type] = [.carrier, .battleship, .submarine, .cruiser, .destroyer]
        var idx = 0
        while ships.count < 5 {
            let ship = generateRandShipWith(length: shipLengths[idx])
            if !isThisLocationUseless(loc: ship) {
                ships.append(Ship(type: shipTypes[idx], location: ship))
                idx += 1
            }
        }
    }
    
    var description: String {
        var sea = ""
        sea.append("\n")
        for sx in 0..<10 {
            sea += sx == 0 ? "10 " : " \(10 - sx) "
            for sy in 0..<10 {
                if let ship = pieceOn(x: sy, y: 10 - (sx + 1)) {
                    switch ship.type {
                    case .battleship:
                        sea += "B "
                    case .carrier:
                        sea += "C "
                    case .cruiser:
                        sea += "c "
                    case .destroyer:
                        sea += "d "
                    case .submarine:
                        sea += "s "
                    }
                } else {
                    sea.append(". ")
                }
            }
            sea.append("\n")
        }
        sea += "   A B C D E F G H I J"
        // "Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ"
        // "I II III IV V
        return sea
    }
    
    func pieceOn(x: Int, y: Int) -> Ship? {
        for ship in ships {
            for point in ship.location {
                if point.x == x && point.y == y {
                    return ship
                }
            }
        }
        return nil
    }
    
    func generateRandShipWith(length: Int) -> [Point] {
        while true {
            let shipHeadYOrX = Int(arc4random()) % (10 - length)
            let dir = Int(arc4random() % 2)
            var loc: [Point] = []
            if dir == 0 {
                let shipHeadX = Int(arc4random() % 10)
                for i in 0..<length {
                    loc.append(Point(x: shipHeadX, y: shipHeadYOrX + i))
                }
            } else {
                let shipHeadY = Int(arc4random() % 10)
                for i in 0..<length {
                    loc.append(Point(x: shipHeadYOrX + i, y: shipHeadY))
                }
            }
            return loc
        }
    }
}
