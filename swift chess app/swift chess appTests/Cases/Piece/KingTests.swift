//
//  KingTests.swift
//  swift chess appTests
//
//  Created by 윤태민(Yun, Taemin) on 2022/10/05.
//

import XCTest
@testable import swift_chess_app

final class KingTests: XCTestCase {

    var sut: King!
    
    func testKingMove() {
        sut = King(color: .white)
        
        let from = Location(row: 4, col: 5)
        var to: Location
        
        to = Location(row: 3, col: 4)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 3, col: 5)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 3, col: 6)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 4, col: 4)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 4, col: 6)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 5, col: 4)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 5, col: 5)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 5, col: 6)
        XCTAssertTrue(sut.isMovable(from: from, to: to))
        
        to = Location(row: 1, col: 3)
        XCTAssertFalse(sut.isMovable(from: from, to: to))
    }
    
    func testKingBlock() {
        sut = King(color: .black)
        
        var board: [[Pieceable?]]
        let row = [Pieceable?](repeating: nil, count: 8)
        board = [[Pieceable?]](repeating: row, count: 8)
        
        /*
         ABCDEFGH
        1........
        2........
        3...♘♕♘..
        4...♖♚♖..
        5...♙♙♙..
        6........
        7........
        8........
         ABCDEFGH
         */
        
        board[3][4] = sut
        
        board[2][3] = Knight(color: .white)
        board[2][4] = Queen(color: .white)
        board[2][5] = Knight(color: .white)
        board[3][3] = Rook(color: .white)
        board[3][5] = Rook(color: .white)
        board[4][3] = Pawn(color: .white)
        board[4][4] = Pawn(color: .white)
        board[4][5] = Pawn(color: .white)
        
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 2, col: 3),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 2, col: 4),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 2, col: 5),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 3, col: 3),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 3, col: 5),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 4, col: 3),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 4, col: 4),
                                     board: board))
        XCTAssertFalse(sut.isBlocked(from: Location(row: 3, col: 4),
                                     to: Location(row: 4, col: 5),
                                     board: board))
        
    }
}
