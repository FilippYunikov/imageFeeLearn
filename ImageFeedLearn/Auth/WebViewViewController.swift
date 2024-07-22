//
//  WebViewViewController.swift
//  ImageFeedLearn
//
//  Created by Filipp on 22.07.2024.
//

import UIKit
import WebKit

protocol WebViewViewControllerDelegate: AnyObject {
    func webViewViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewViewController)
}

final class WebViewViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction private func didTapBackButton(_ sender: Any?) {

    }
    
    
    weak var delegate: WebViewViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var urlComponents = URLComponents(string: Constants.unsplashAuthorizeURLString)!
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: Constants.accessKey),
            URLQueryItem(name: "redirect_uri", value: Constants.redirectUri),
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "scope", value: Constants.accessScope)
        ]
        let url = urlComponents.url!

        let request = URLRequest(url: url)
        webView.load(request)
    }
}
 

