//
//  UIImageView+Extension.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    func loadURL(url: String) {
        if let url = URL(string: url) {
            sd_setImage(with: url)
        }
    }
}
