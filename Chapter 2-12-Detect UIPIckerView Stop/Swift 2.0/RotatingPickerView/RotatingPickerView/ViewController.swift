//
//  ViewController.swift
//  RotatingPickerView
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

  @IBOutlet weak var picker: RotatinPickerView!
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    roll()
   }
  
  

  func roll() {
    UIView.beginAnimations("animation", context: nil)
    UIPickerView.setAnimationDelegate(self)
    UIView.setAnimationDidStopSelector( Selector("animationDidStop:finished:context:") )
    picker.selectRow(40, inComponent: 0, animated: true)
    UIView.commitAnimations()
  }
  

  func animationDidStop(animationID: String?, finished: NSNumber, context: UnsafeMutablePointer<Void>) {
    print( "animation finished!" )
  }


}




