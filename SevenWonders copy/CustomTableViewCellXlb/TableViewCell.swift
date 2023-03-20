//
//  TableViewCell.swift
//  CustomTableViewCellXlb
//
//  Created by Xiangyang Liu on 2/22/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imageContainer: UIImageView!

    
    @IBOutlet weak var lblImage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
