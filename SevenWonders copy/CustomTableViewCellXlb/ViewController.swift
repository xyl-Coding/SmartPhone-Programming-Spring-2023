//
//  ViewController.swift
//  CustomTableViewCellXlb
//
//  Created by Xiangyang Liu on 2/22/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    let imageNames = ["img1", "img2", "img3", "img4", "img5","img6","img7"]
    
    let wondersDetails = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var UITableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        
        cell.ImageContainer.image = UIImage(named: "img\(indexPath.row)")
        //cell.lblImage.text = imageNames[indexPath.row]
        cell.lblImage.text = "img\(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DeatilSegue", sender: tableView)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DeatilSegue" {
            let secondVC = segue.destination as! DetailViewController
            guard let tableView = sender as? UITableView else {
                return
            }
            let selectedRow = tableView.indexPathForSelectedRow!.row
            let selectedDetail = wondersDetails[selectedRow]
            secondVC.text = selectedDetail
        }
    }
}

