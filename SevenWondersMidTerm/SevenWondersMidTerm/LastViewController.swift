//
//  LastViewController.swift
//  SevenWondersMidTerm
//
//  Created by Xiangyang Liu on 3/19/23.
//

import UIKit

class LastViewController: UIViewController {

    var myText = ""
    @IBOutlet var txtShow: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtShow.text = myText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
