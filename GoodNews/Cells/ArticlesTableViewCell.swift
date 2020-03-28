//
//  ArticlesTableViewCell.swift
//  GoodNews
//
//  Created by Khaled Bohout on 3/27/20.
//  Copyright © 2020 Khaled Bohout. All rights reserved.
//

import UIKit

class ArticlesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl : UILabel!
    @IBOutlet weak var descriptionLbl : UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
