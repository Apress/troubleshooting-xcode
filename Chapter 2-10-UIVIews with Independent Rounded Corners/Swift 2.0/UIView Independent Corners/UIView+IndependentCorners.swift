//
//  UIView+IndependentCorners.swift
//  
//
//  Created by Fireball on 10/07/15.
//
//

import UIKit
import QuartzCore


extension UIView {
  
  
  func corners(corners: UIRectCorner, radius : CGFloat) {
    
    let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSizeMake(radius, radius))

    let cornerLayer = CAShapeLayer()
    cornerLayer.frame = self.bounds
    cornerLayer.path = maskPath.CGPath
    layer.mask = cornerLayer
    
  }
  
}