//
//  ViewController.swift
//  CountingElements
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    // creating the dictionaries
    let dict1 = ["object" : "television", "selected": true]
    let dict2 = ["object" : "phone",      "selected": false]
    let dict3 = ["object" : "book",       "selected": true]
    
    // creating the array
    let array = [dict1, dict2, dict3]
    
    // the magic command
    let filteredArray = array.filter({$0["selected"] == true})
    
    let result = filteredArray.count
    print(result) // this will print 2 on console

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

