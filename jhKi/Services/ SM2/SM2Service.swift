//
//  SM2Service.swift
//  jhKi
//
//  Created by LJh on 6/22/26.
//

import Foundation

final class SM2Service {

    func review(
        card: Card,
        quality: Answer
    ) -> SM2Result {

        var ef = card.easinessFactor
        var repetitions = card.repetitions
        var interval = card.interval

        let q = qualityScore(quality)

        // 1. EF 계산
        ef = max(1.3, ef + (0.1 - (5 - Double(q)) * (0.08 + (5 - Double(q)) * 0.02)))

        // 2. repetition 처리
        if q < 3 {
            repetitions = 0
            interval = 1
        } else {
            repetitions += 1

            if repetitions == 1 {
                interval = 1
            } else if repetitions == 2 {
                interval = 6
            } else {
                interval = Int(Double(interval) * ef)
            }
        }

        let nextDate = Calendar.current.date(
            byAdding: .day,
            value: interval,
            to: Date()
        ) ?? Date()

        return SM2Result(
            interval: interval,
            easinessFactor: ef,
            repetitions: repetitions,
            nextReviewDate: nextDate
        )
    }

    private func qualityScore(_ answer: Answer) -> Int {
        switch answer {
        case .again: return 1
        case .hard: return 3
        case .good: return 4
        case .easy: return 5
        }
    }
    
    func apply(result: SM2Result, to card: Card) {
        card.interval = result.interval
        card.easinessFactor = result.easinessFactor
        card.repetitions = result.repetitions
        card.nextReviewDate = result.nextReviewDate
        card.updatedAt = Date()
    }
}
