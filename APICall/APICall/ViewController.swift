//
//  ViewController.swift
//  APICall
//
//  Created by Xiangyang Liu on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    
    
    @IBOutlet var Name: UILabel!
    
    @IBOutlet var Price: UILabel!
    
    @IBOutlet var Website: UILabel!
    //Field
    @IBOutlet var txtSymbol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getCompanyInfo(_ sender: Any) {
        guard let symbol = txtSymbol.text else {return}
        let url = "\(baseUrl)\(symbol)?apikey=\(apiKey)"
        //print("URL = \(url)")
        AF.request(url).responseJSON { response in
           
                                        
            
            guard let rawData = response.data else{return}
            guard let jsonArray = JSON(rawData).array else{return}
            guard let stock = jsonArray.first else{return}
          //  print(stock)
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
            //let name = stock["Name"].stringValue

            print("symbol = \(symbol)")
            print("price = \(price)")
            print("website = \(website)")

            self.Price.text = "Price = \(price) $"
            self.Website.text = website
            self.Name.text = stock["companyName"].stringValue
  
            }
        }
           
    }
    
