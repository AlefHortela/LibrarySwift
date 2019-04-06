//
//  AuthorTableViewCell.swift
//  LibraryDemo
//
//  Created by Luiz SSB on 3/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class AuthorTableViewCell: UITableViewCell {
    static let rowHeight: CGFloat = 65

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var author: (name: String, age: Int)? {
        didSet {
            nameLabel.text = author?.name
            ageLabel.text = author?.age.description
        }
    }
    
}
