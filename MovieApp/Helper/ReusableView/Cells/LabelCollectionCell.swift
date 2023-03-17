//
//  LabelCollectionCell.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import UIKit

class LabelCollectionCell: UICollectionViewCell, ReuseProtocol, NibProtocol {
    @IBOutlet private weak var titleLabel: UILabel!
    
    func configure(text: String) {
        titleLabel.text = text
    }
}
