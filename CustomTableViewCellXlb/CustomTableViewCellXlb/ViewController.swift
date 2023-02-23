//
//  ViewController.swift
//  CustomTableViewCellXlb
//
//  Created by Xiangyang Liu on 2/22/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    let imageNames = ["FoodOne", "FoodTwo", "FoodThree", "FoodaFour", "FoodFive","FoodSix","FoodSeven","FoodEight","FoodNine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        
        cell.ImageContainer.image = UIImage(named: "Food\(indexPath.row)")
        cell.lblImage.text = imageNames[indexPath.row]
        //cell.lblImage.text = "Food\(indexPath.row)"
        return cell
    }
}

