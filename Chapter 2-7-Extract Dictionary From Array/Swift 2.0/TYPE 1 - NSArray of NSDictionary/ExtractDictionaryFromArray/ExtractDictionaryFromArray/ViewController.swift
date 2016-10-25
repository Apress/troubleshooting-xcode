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
    // FIRST KIND: NSARRAY OF NSDICTIONARIES
    // * * * * * * * * * * * * * * * * * * * *
    // * * * * * * * * * * * * * * * * * * * *
    // * * * * * * * * * * * * * * * * * * * *
    // create the NSDictionaries of random NSDates
    
    let obj1 : NSDictionary? = ["name":"car",   "date":date1!]
    let obj2 : NSDictionary? = ["name":"boat",  "date":date2!]
    let obj3 : NSDictionary? = ["name":"plane", "date":date3!]
    
    // and store them on an array
    let unsortedArray : NSArray = [obj1!, obj2!, obj3!]
    
    // create a NSSortDescriptor to sort the array
    let dateDescriptor : NSSortDescriptor =
    NSSortDescriptor(key: "date", ascending: true)
    
    // sorting the array
    let sortedArrayOfDics : NSArray =  
    unsortedArray.sortedArrayUsingDescriptors([dateDescriptor])
    
    // because the array is sorted, the last object is the
    // one with the most recent date
    let mostRecent : AnyObject! = sortedArrayOfDics.lastObject
    
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

