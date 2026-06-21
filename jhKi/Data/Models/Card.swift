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
    /// 다시 나올 날짜
    var nextReviewDate: Date
    /// 카드 난이도 값
    var easinessFactor: Double
    /// 연속으로 맞춘 횟수
    var repetitions: Int
    /// 몇일인지
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

