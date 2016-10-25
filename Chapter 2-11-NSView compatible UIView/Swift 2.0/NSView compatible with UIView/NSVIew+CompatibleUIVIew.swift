//
//  NSVIew+CompatibleUIVIew.swift
//  MacSwift
//
//  Created by Fireball on 11/07/15.
//  Copyright (c) 2015 -. All rights reserved.
//

import Foundation
import AppKit

extension NSView {
  
  typealias AnimationHandler  = () -> Void
  typealias CompletionHandler = (finished : Bool) -> Void
  
  
  var center:CGPoint {
    
    get {
      let midX = CGRectGetMidX(frame)
      let midY = CGRectGetMidY(frame)
      
      return CGPointMake(midX, midY)
    }
    
    set(newCenter) {
      var newFrame = CGRectZero
      newFrame.size = frame.size
      
      let myWidth = CGRectGetWidth(frame)
      let myHeight = CGRectGetHeight(frame)
      
      let x = floor(newCenter.x - (myWidth / 2.0) )
      let y = floor(newCenter.y - (myHeight / 2.0) )
      
      newFrame.origin.x = x
      newFrame.origin.y = y
      
      frame = newFrame
    }
    
    
  }
  

  var alpha : CGFloat {
        
        get{
           return alphaValue
        }
        
        set(value) {
           alphaValue = value
        }
        
  }
  
  func fadeInWithDuration (duration : NSTimeInterval) {
          wantsLayer = true
          NSAnimationContext.beginGrouping()
          NSAnimationContext.currentContext().duration = duration
          animator().alphaValue = 1.0
          NSAnimationContext.endGrouping()
  }
  
  func fadeOutWithDuration (duration : NSTimeInterval) {
          wantsLayer = true
          NSAnimationContext.beginGrouping()
          NSAnimationContext.currentContext().duration = duration
          animator().alphaValue = 0.0
          NSAnimationContext.endGrouping()
  }

  func animateWithDuration (duration : NSTimeInterval, animations:AnimationHandler) {
            wantsLayer = true
            NSAnimationContext.runAnimationGroup({ (context: NSAnimationContext) -> Void in
            
            context.duration = duration
            context.allowsImplicitAnimation = true
            
            animations()
            }, completionHandler: { () -> Void in
            
            })
  }
  

  func animateWithDuration (duration : NSTimeInterval, animations:AnimationHandler, completion:CompletionHandler) {
              wantsLayer = true
              
              NSAnimationContext.runAnimationGroup({ (context: NSAnimationContext) -> Void in
              
              context.duration = duration
              context.allowsImplicitAnimation = true
              
              animations()
              }, completionHandler: { () -> Void in
    completion(finished:true)
    
              })
              
  }
}