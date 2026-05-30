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
    var title: String
    init(title: String) {
        self.title = title
    }
}
