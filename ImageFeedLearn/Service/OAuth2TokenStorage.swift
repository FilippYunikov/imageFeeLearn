//
//  OAuthTokenStorage.swift
//  ImageFeedLearn
//
//  Created by Filipp on 23.07.2024.
//

import Foundation


protocol OAuth2TokenStorageProtocol {
    var token: String? { get }
}

final class OAuth2TokenStorage: OAuth2TokenStorageProtocol {
    
    private let userDefaults = UserDefaults.standard
    private enum Keys: String {
        case token
    }
    
    var token: String? {
        get { userDefaults.string(forKey: Keys.token.rawValue)}
        set { userDefaults.set(newValue, forKey: Keys.token.rawValue) }
    }


}
