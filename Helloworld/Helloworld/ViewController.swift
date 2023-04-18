//
//  ViewController.swift
//  Helloworld
//
//  Created by Xiangyang Liu on 4/17/23.
//

import UIKit
 
class ViewController: UIViewController {

    @IBOutlet var lblExample: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("I am inside viewDidLoad()")
    }


    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        iblExample.text = "Button was pressed"
    }
}

