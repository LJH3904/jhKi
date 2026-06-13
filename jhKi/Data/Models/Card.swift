//
//  Card.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation
import SwiftData

@Model
final class Card {
    
    // MARK: - Identity
    var id: UUID
    
    // MARK: - Content
    var front: String
    var reading: String
    var meaning: String
    
    var deck: Deck?
    
    // MARK: - SM-2 State
    var nextReviewDate: Date
    var easinessFactor: Double
    var repetitions: Int
    var interval: Int
    
    // MARK: - Timestamp
    var createdAt: Date
    var updatedAt: Date
    
    // MARK: - Init
    init(
        front: String,
        reading: String,
        meaning: String,
    ) {
        self.id = UUID()
        
        self.front = front
        self.reading = reading
        self.meaning = meaning
        
        self.nextReviewDate = .now
        self.easinessFactor = 2.5
        self.repetitions = 0
        self.interval = 0
        
        self.createdAt = .now
        self.updatedAt = .now
        
    }
    
}

