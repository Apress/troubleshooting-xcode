//
//  ViewController.swift
//  DetectTarget
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    print("Target Running = ",  getTarget());
  }

  
  func getTarget() -> NSString {
    
    let dict : NSDictionary = NSBundle.mainBundle().infoDictionary!
    
    let family  = dict["UIDeviceFamily"]!
    let device = family[0]
    
    return (device.integerValue == 1) ? "iPhone" : "iPad"
  }

  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

