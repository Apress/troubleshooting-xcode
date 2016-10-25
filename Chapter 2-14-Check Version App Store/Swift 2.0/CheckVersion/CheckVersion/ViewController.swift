//
//  ViewController.swift
//  CheckVersion
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    getAppVersion { (version) -> Void in
      print("latest version = ", version)
    }
    
  }
  
  
  func getAppVersion ( onCompletion: (version: String) -> Void) {
    
    // get the app’s bundle identifier
    let bundleIdentifier = "com.addfone.EuroMillionsIPAD"
    
    // build the app path using iTunes API
    let path : String = "http://itunes.apple.com/lookup?bundleId=\(bundleIdentifier)"
    
    
    let lookupURL : NSURL = NSURL(string:path)!
    let session = NSURLSession.sharedSession()
    
    let request = NSURLRequest(URL: lookupURL)
    
    // request data about the application, asynchronously
    // using iTunes API
    let task = session.dataTaskWithRequest(request, completionHandler: { data, response, error in
      if !(error != nil) {
      do {
      let jsonResults = try  NSJSONSerialization.JSONObjectWithData(data!, options: [])  as! NSDictionary
      
      let results = jsonResults["results"]
      let appDetails = results?.firstObject
      
      // get the application version
      let latestVersion = appDetails!!["version"] as! String
      onCompletion(version: latestVersion)
    }
      catch let error as NSError {
      print("error = \(error)")
    }
      catch {   }
      }
      })
    
    task.resume()
    
  }
  
  
  
  
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

