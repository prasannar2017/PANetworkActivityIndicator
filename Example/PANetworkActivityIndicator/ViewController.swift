//
//  ViewController.swift
//  PANetworkActivityIndicator
//
//  Created by prasanna-tapzo on 06/24/2017.
//  Copyright (c) 2017 prasanna-tapzo. All rights reserved.
//

import UIKit
import PANetworkActivityIndicator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = URL(string: "http://www.google.com")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
               
                UIApplication.shared.popNetworkIndicator()
                
                if error != nil {}
                else {
                    if let usableData = data {
                        print(usableData)
                    }
                }
            }
            UIApplication.shared.pushNetworkIndicator()
            task.resume()
        }
        
        
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                UIApplication.shared.popNetworkIndicator()
                
                if error != nil {}
                else {
                    if let usableData = data {
                        print(usableData)
                    }
                }
            }
            UIApplication.shared.pushNetworkIndicator()
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

