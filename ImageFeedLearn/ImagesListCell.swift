//
//  ImagesListCell.swift
//  ImageFeedLearn
//
//  Created by Filipp on 04.05.2024.
//

import Foundation
import UIKit

final class ImagesListCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    static let reuseIdentifier = "ImagesListCell"
    

}
