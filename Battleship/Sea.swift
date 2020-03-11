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
    
    mutating func initC() {
        ships.append(Ship(type: .destroyer, location: [Point(x: 0, y: 1),
                                                       Point(x: 1, y: 1)]))
        ships.append(Ship(type: .cruiser, location: [Point(x: 0, y: 3),
                                                     Point(x: 1, y: 3),
                                                     Point(x: 2, y: 3)]))
        ships.append(Ship(type: .submarine, location: [Point(x: 0, y: 5),
                                                       Point(x: 1, y: 5),
                                                       Point(x: 2, y: 5)]))
        ships.append(Ship(type: .battleship, location: [Point(x: 2, y: 7),
                                                        Point(x: 3, y: 7),
                                                        Point(x: 4, y: 7),
                                                        Point(x: 5, y: 7)]))
        ships.append(Ship(type: .carrier, location: [Point(x: 0, y: 9),
                                                     Point(x: 1, y: 9),
                                                     Point(x: 2, y: 9),
                                                     Point(x: 3, y: 9),
                                                     Point(x: 4, y: 9)]))
    }
    
    var description: String {
        var sea = ""
        sea.append("\n")
        for sx in 0..<10 {
            sea += sx == 0 ? "10 " : " \(10 - sx) "
            for sy in 0..<10 {
                if isOn(x: sy, y: 10 - sx) {
                    sea += "◘ "
                } else {
                    sea.append(". ")
                }
            }
            sea.append("\n")
        }
        sea += "   A B C D E F G H I J"
        // "Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ"
        return sea
    }
    
    func isOn(x: Int, y: Int) -> Bool {
        for ship in ships {
            for point in ship.location {
                if point.x == x && point.y == y {
                    return true
                }
            }
        }
        return false
    }
}
