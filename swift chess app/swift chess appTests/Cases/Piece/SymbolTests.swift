//
//  SymbolTests.swift
//  swift chess appTests
//
//  Created by 윤태민(Yun, Taemin) on 2022/09/30.
//

import XCTest
@testable import swift_chess_app

final class SymbolTests: XCTestCase {

    func testPawn() {
        XCTAssertEqual(Pawn.maxCount, 8)
        
        var sut: Pawn!
        sut = Pawn(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♟")
        
        sut = Pawn(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♙")
    }
    
    func testBishop() {
        XCTAssertEqual(Bishop.maxCount, 2)
        
        var sut: Bishop!
        sut = Bishop(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♝")
        
        sut = Bishop(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♗")
    }
    
    func testRook() {
        XCTAssertEqual(Rook.maxCount, 2)
        
        var sut: Rook!
        sut = Rook(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♜")
        
        sut = Rook(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♖")
    }
    
    func testQueen() {
        XCTAssertEqual(Queen.maxCount, 1)
        
        var sut: Queen!
        sut = Queen(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♛")
        
        sut = Queen(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♕")
    }
    
    func testKnight() {
        XCTAssertEqual(Knight.maxCount, 2)
        
        var sut: Knight!
        sut = Knight(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♞")
        
        sut = Knight(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♘")
    }
    
    func testKing() {
        XCTAssertEqual(King.maxCount, 1)
        
        var sut: King!
        sut = King(color: .black)
        XCTAssertEqual(sut.getSymbol().image, "♚")
        
        sut = King(color: .white)
        XCTAssertEqual(sut.getSymbol().image, "♔")
    }
}
