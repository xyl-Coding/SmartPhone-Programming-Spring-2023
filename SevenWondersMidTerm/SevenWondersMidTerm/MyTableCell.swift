//
//  MyTableCell.swift
//  SevenWondersMidTerm
//
//  Created by Xiangyang Liu on 3/18/23.
//

import UIKit

class MyTableCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
