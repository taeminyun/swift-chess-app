//
//  King.swift
//  swift chess app
//
//  Created by 윤태민(Yun, Taemin) on 2022/10/05.
//

import Foundation

struct King: Pieceable {
    static var maxCount: Int = 1
    
    static var score: Int = 15
    
    var color: PieceColor
    
    func isMovable(from: Location, to: Location) -> Bool {
        let vertical: Bool = (from.row == to.row && abs(from.col - to.col) == 1)
        let horizontal: Bool = (abs(from.row - to.row) == 1 && from.col == to.col)
        let diagonal: Bool = (abs(from.row - to.row) == 1 && abs(from.col - to.col) == 1)
        
        return vertical || horizontal || diagonal
    }
    
    func isBlocked(from: Location, to: Location, board: [[Pieceable?]]) -> Bool {
        return false
    }
    
    
}
