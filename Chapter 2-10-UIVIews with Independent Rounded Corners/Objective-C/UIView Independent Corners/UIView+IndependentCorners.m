//
//  UIView+IndependentCorners.m
//  Vacations
//
//  Created by Fireball on 11/07/15.
//  Copyright (c) 2015 Magno Urbano. All rights reserved.
//

#import "UIView+IndependentCorners.h"

@implementation UIView (IndependentCorners)


- (void)setCorners:(UIRectCorner)corners withRadius:(CGFloat)radius
{
  
  // UIButton requires this
  //  [self layer].cornerRadius = 0.0;
  
  UIBezierPath *shapePath = [UIBezierPath bezierPathWithRoundedRect:[self bounds]
                                                  byRoundingCorners:corners
                                                        cornerRadii:CGSizeMake(radius, radius)];
  
  CAShapeLayer *newCornerLayer = [CAShapeLayer layer];
  newCornerLayer.frame = [self bounds];
  newCornerLayer.path = shapePath.CGPath;
  [self layer].mask = newCornerLayer;
  
}


@end
