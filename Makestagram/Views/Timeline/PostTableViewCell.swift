//
//  PostTableViewCell.swift
//  Makestagram
//
//  Created by Timothy Horng on 7/2/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}