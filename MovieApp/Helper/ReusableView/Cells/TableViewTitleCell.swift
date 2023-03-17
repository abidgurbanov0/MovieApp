//
//  TableViewTitleCell.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import UIKit

class TableViewTitleCell: UITableViewCell, NibProtocol, ReuseProtocol {

    @IBOutlet private weak var titleLabel: UILabel!
    
    func configure(title: String) {
        titleLabel.text = title
    }
}
