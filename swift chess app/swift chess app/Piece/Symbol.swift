//
//  Symbol.swift
//  swift chess app
//
//  Created by 윤태민(Yun, Taemin) on 2022/09/30.
//

import Foundation

enum Symbol {
    case pawn(PieceColor)
    case bishop(PieceColor)
    case rook(PieceColor)
    case queen(PieceColor)
    case knight(PieceColor)
    case king(PieceColor)
    case empty
    
    var image: String {
        switch self {
        case .pawn(let color):      return color == .black ? "♟" : "♙"
        case .bishop(let color):    return color == .black ? "♝" : "♗"
        case .rook(let color):      return color == .black ? "♜" : "♖"
        case .queen(let color):     return color == .black ? "♛" : "♕"
        case .knight(let color):    return color == .black ? "♞" : "♘"
        case .king(let color):      return color == .black ? "♚" : "♔"
        case .empty:                return "."
        }
    }
    
    var rawValue: String {
        switch self {
        case .pawn:     return "pawn"
        case .bishop:   return "bishop"
        case .rook:     return "rook"
        case .queen:    return "queen"
        case .knight:   return "knight"
        case .king:     return "king"
        default:        return "empty"
        }
    }
    
    init(name: String, color: PieceColor) {
        switch name {
        case Self.pawn(color).rawValue:     self = .pawn(color)
        case Self.bishop(color).rawValue:   self = .bishop(color)
        case Self.rook(color).rawValue:     self = .rook(color)
        case Self.queen(color).rawValue:    self = .queen(color)
        case Self.knight(color).rawValue:   self = .knight(color)
        case Self.king(color).rawValue:     self = .king(color)
        default:                            self = .empty
        }
    }
}
