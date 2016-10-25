//
//  ViewController.swift
//  OpenDocumentPicker
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    openImportDocumentPicker(self)
  }
  
  
  
   @IBAction func openImportDocumentPicker(sender : AnyObject) {
    
    let documentPicker = UIDocumentPickerViewController(documentTypes: ["public.image"],
      inMode: UIDocumentPickerMode.Import)
    
    documentPicker.modalPresentationStyle = UIModalPresentationStyle.FormSheet
    self.presentViewController(documentPicker, animated: true) { () -> Void in
      
    }
    
  }
  
  


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

