//
//  ViewController.swift
//  Insane Dates
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let comps   = NSDateComponents()
    comps.day   = 22
    comps.month = 8
    comps.year  = 2020
    
    let gregorian = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    
    // the magical line
    // enable this to fix the problem
    // gregorian?.timeZone = NSTimeZone(forSecondsFromGMT: 0)
    

    let date = gregorian?.dateFromComponents(comps)
    
    
    print("Date is " , date)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

