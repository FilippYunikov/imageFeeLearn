//
//  AuthViewController.swift
//  ImageFeedLearn
//
//  Created by Filipp on 22.07.2024.
//

import UIKit

final class AuthViewController: UIViewController {
    let segueIdentifier = "ShowWebView"
    
    private func configureBackButton() {
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "nav_back_button") // 1
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "nav_back_button") // 2
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil) // 3
        navigationItem.backBarButtonItem?.tintColor = UIColor(named: "ypBlack") // 4
    }
    
    override func viewDidLoad() {
        configureBackButton()
    }
    

}

