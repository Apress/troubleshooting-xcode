//
//  ViewController.swift
//  ExtractDictionaryFromArray
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    // 3 random dates
    let date1 : NSDate! = NSDate(timeIntervalSince1970: 5000);
    let date2 : NSDate! = NSDate(timeIntervalSince1970: 500);
    let date3 : NSDate! = NSDate(timeIntervalSince1970: 2500);
    
    // * * * * * * * * * * * * * * * * * * * *
    // * * * * * * * * * * * * * * * * * * * *
    // SECOND KIND: SWIFT ARRAY OF SWIFT DICTIONARIES
    // * * * * * * * * * * * * * * * * * * * *
    // * * * * * * * * * * * * * * * * * * * *
    // * * * * * * * * * * * * * * * * * * * *
    // create the NSDictionaries of random NSDates
    
    // creating the dictionaries
    let dict1 : [String:AnyObject?] = ["object" : "car",    "date" : date1]
    let dict2 : [String:AnyObject?] = ["object" : "boat",   "date" : date2]
    let dict3 : [String:AnyObject?] = ["object ": "plane",  "date" : date3]
    
    // creating the array
    let array : Array = [dict1, dict2, dict3]
    
    // creating the sort
    let result = array.sort {
      item1, item2 in
      let date1 = item1["date"] as! NSDate
      let date2 = item2["date"] as! NSDate
      return date1.compare(date2) == NSComparisonResult.OrderedAscending
    }
    
    let latestDate = result.last
    print(latestDate)
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

