//
//  TitleCell.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import UIKit

class TitleCell: UICollectionViewCell, ReuseProtocol, NibProtocol {
    @IBOutlet private weak var titleLabel: UILabel!
    
    func configure(title: String) {
        titleLabel.text = title
    }
}
