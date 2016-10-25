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
    let dict1 : NSDictionary = ["object"  : "television" ,
                               "selected" : true]
    
    let dict2 : NSDictionary = ["object"  : "phone",
                              "selected"  : false]
    
    let dict3 : NSDictionary = ["object"  : "book",
                              "selected"  : true]
    
    
    // creating the array
    let array : NSArray? = [dict1, dict2, dict3]
    
    // this is the magical command
    let count = array!.valueForKeyPath("@sum.selected")?.integerValue
    
    print(count); // this will print 2 on console

  }
  
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

