//
//  newViewController.swift
//  CustomTableViewCellXlb
//
//  Created by Xiangyang Liu on 3/18/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var UIText: UITextView!
    
    var text: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let text = text {
                UIText.text = text
            } else {
                UIText.text = "null"
            }
        }

    
}

