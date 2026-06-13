//
//  Item.swift
//  jhKi
//
//  Created by LJh on 5/26/26.
//

import Foundation
import SwiftData

@Model
final class Deck {

    // MARK: - Identity
    var id: UUID

    // MARK: - Content
    var name: String

    // MARK: - Timestamp
    var createdAt: Date
    
    // MARK: - Relationship (1:N)
    var cards: [Card]

    // MARK: - Init
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.createdAt = .now

        self.cards = []
    }
}
