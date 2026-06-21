//
//  StudyViewModel.swift
//  jhKi
//
//  Created by LJh on 6/22/26.
//

import Foundation

enum Answer {
    case again
    case hard
    case good
    case easy
}

@Observable
final class StudyViewModel {
    private let cardRepository: CardRepositoryProtocol
    private let sm2Service: SM2Service
    var cards: [Card] = []
    var currentIndex: Int = 0
    /// 前と後
    var isFlipped: Bool = false
    
    var currentCard: Card? {
        guard cards.indices.contains(currentIndex) else { return nil }

        return cards[currentIndex]
    }
    
    init(
        cardRepository: CardRepositoryProtocol,
        sm2Service: SM2Service
    ) {
        self.cardRepository = cardRepository
        self.sm2Service = sm2Service
    }
    
    func loadCards() {
        do {
            cards = try cardRepository.fetchDueCards()
            currentIndex = 0
            isFlipped = false
        } catch {
            cards = []
        }
    }
    
    func nextCard() {
        guard currentIndex + 1 < cards.count else { return }
        
        currentIndex += 1
        isFlipped = false
    }
    
    func flipCard() {
        isFlipped.toggle()
    }
    
    func answer(_ answer: Answer) {
        guard let card = currentCard else { return }

        let result = sm2Service.review(card: card, quality: answer)
        
        sm2Service.apply(result: result, to: card)
        
        do {
            try cardRepository.update(card)
            nextCard()
        } catch {
            AppLogger.log(
                "card update failed",
                level: .error
            )
        }
    }
    
}
