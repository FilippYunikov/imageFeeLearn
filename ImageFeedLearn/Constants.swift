//
//  Constants.swift
//  ImageFeedLearn
//
//  Created by Filipp on 21.07.2024.
//

import Foundation

public enum Constants {
    static let accessKey: String = "_2BYbwH5rGgqC4E08oai6WNkhEL_-A_GE7-9KJG5-TE"
    static let secretKey: String = "OKuxyjbHeNax8mBP7e1zrFTJIG5TxNLi_Zm4_WaVDEM"
    static let redirectUri: String = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope: String = "public+read_user+write_likes"
    static let defaultBaseURL: URL = URL(string: "https://api.unsplash.com")!
    static let unsplashAuthorizeURLString: String = "https://unsplash.com/oauth/authorize"
    static let unsplashTokenURLString: String = "https://unsplash.com/oauth/token"
}
