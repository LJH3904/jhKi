//
//  PersistenceError.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation

enum PersistenceError: LocalizedError {
    case containerCreationFailed(Error)
    case saveFailed(Error)
    case fetchFailed(Error)
    case deleteFailed(Error)
    
    var errorDescription: String? {
        switch self {
        case .containerCreationFailed:
            return "データベースの初期化に失敗しました。"
        case .saveFailed:
            return "データの保存に失敗しました。"
        case .fetchFailed:
            return "データの取得に失敗しました。"
        case .deleteFailed:
            return "データの削除に失敗しました。"
        }
    }
    var underlyingError: Error {
        switch self {
        case
                .containerCreationFailed(let error),
                .saveFailed(let error),
                .fetchFailed(let error),
                .deleteFailed(let error):
            return error
            
        }
    }
}

