//
//  RotatingPickerView.swift
//  RotatingPickerView
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

import Foundation
import UIKit


class RotatinPickerView : UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource  {
  
  let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
    "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho",
    "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine",
    "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi",
    "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
    "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
    "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
    "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
    "Washington", "West Virginia", "Wisconsin", "Wyoming"]
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    delegate = self
    dataSource = self
  }
  
  // returns the number of 'columns' to display.
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
  {
    return 1
  }
  
  // returns the # of rows in each component..
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
  {
    return states.count
  }
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  {
    return states[row]
  }
  
}