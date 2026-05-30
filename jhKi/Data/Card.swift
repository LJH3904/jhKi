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
/*
 클래스로 만드는 이유
 1. swiftdata는 class로 만들어서 참조타입으로 둔다
 2. 데이터베이스에 저장가능함
 3. 같은 객체를 직접 수정 (이부분으로 통해서 vm모델에 card배열을 넣지않고, swiftData에서 직접 꺼내쓰는거임) <- 질문
 
 */
