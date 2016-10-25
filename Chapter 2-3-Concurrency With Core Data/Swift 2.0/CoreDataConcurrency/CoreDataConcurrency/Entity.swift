//
//  Entity.swift
//  CoreDataConcurrency
//
//  Created by Magno Urbano on 16/07/15.
//  Copyright © 2015 -. All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress

import Foundation
import CoreData

@objc(Entity)
class Entity: NSManagedObject {

  static let lock = NSLock()
  
  func allObjectsInContext(context : NSManagedObjectContext) -> NSArray {
    
    var all : NSArray?
    
    let request : NSFetchRequest? = NSFetchRequest()
    request?.entity = NSEntityDescription.entityForName("Entity", inManagedObjectContext: context)
    request?.returnsDistinctResults = true
    
    
    Entity.lock.lock()
    
    do {
      all = try context.executeFetchRequest(request!)
      // success ...
    } catch let error as NSError {
      // failure
      print("Fetch failed: \(error.localizedDescription)")
    }
    
    Entity.lock.unlock()
    
    return all!
    
  }
  

  
}
