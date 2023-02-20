//
//  ViewController.swift
//  TwoTables
//
//  Created by Xiangyang Liu on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tblViewTop: UITableView!
    @IBOutlet weak var tblViewBottom: UITableView!
    
    
    let resturants = ["KFC","Hot Pot","Zeek Pizza","Roti"]
    
    let food = [["Onion rings","Fired Chicken","Spinach cheese","Beef Ramen","Tuna"],
                ["Burger Sliders","Spaghetti","Meatloaf","catfish","tomato pork"],
                ["Apple pie","Banana split","Cinnamon rolls", "Eggs and milk","pistachios"],
                ["Strawberry shortcake","meatballs","Local clams","Dried Figa", "noodles"]]
    
   
    var foodItems : [String]  = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop{
            return resturants.count
        }else{
            return foodItems.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellone", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "celltwo", for: indexPath)
            cell.textLabel?.text = foodItems[indexPath.row]
            return cell
        }
        
    }
        
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop{
                       
         let selectRow = indexPath.row
                       
          foodItems = food[selectRow]
                
            self.tblViewBottom.reloadData()
                   }
    }
    }

         

