//
//  ViewController.swift
//  APIExample
//
//  Created by Ndoda Kheswa on 2016/09/21.
//  Copyright © 2016 Simple-software Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appsTableView : UITableView!
    
    var tableData: NSArray = []
    
    func jsonParser(urlString: String) {
        
        let url = URL(string: urlString)
        let session = URLSession.shared
        let task = session.dataTask(with:url!, completionHandler: {(data, response, error) in
            if error != nil {
                print(error)
            } else {
                for index in 0...1 {
                    do {
                        
                        let parsedData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSArray
                        let currentConditions = parsedData[index] as! NSDictionary
                        
                        let address = currentConditions["address"]
                        print(currentConditions)
                        print(address)
                        
                        print(parsedData.count)
                    } catch let error as NSError {
                        print(error)
                    }
                }
            }
            
        })
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParser(urlString: "http://localhost:9999/customer")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

