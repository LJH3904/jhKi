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
        case .containerCreationFailed(let error):
            return "データベースの初期化に失敗しました: \(error.localizedDescription)"
        case .saveFailed(let error):
            return "データの保存に失敗しました: \(error.localizedDescription)"
        case .fetchFailed(let error):
            return "データの取得に失敗しました: \(error.localizedDescription)"
        case .deleteFailed(let error):
            return "データの削除に失敗しました: \(error.localizedDescription)"
        }
    }
    var underlyingError: Error {
        switch self {
        case .containerCreationFailed(let error):
            return error
        case .saveFailed(let error):
            return error
        case .fetchFailed(let error):
            return error
        case .deleteFailed(let error):
            return error
        }
    }
}

