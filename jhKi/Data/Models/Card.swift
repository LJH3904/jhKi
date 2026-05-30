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
    var front: String
    var back: String
    
    init(front: String, back: String) {
        self.front = front
        self.back = back
    }
}
