//
//  ViewController.swift
//  Hello World
//
//  Created by Xiangyang Liu on 1/17/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("I am inside viewDidLoad() funtion")
    }

    @IBAction func pressmeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Hello World"
    }
    
}

