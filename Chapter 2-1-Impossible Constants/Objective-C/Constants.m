//
//  Constants.m
//  BarButtonItemColor
//
//  Created by Magno Urbano on 16/07/15.
//  Copyright © 2015 -. All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress

#import "Constants.h"

@implementation Constants


+ (NSArray *) myConstantArray {
  // by declaring the static on the .m we guarantee that other
  // classes using this one will not make their
  // own copy of the static
  static NSArray *_myConstantArray = nil;
  
  @synchronized (_myConstantArray) {
    if (_myConstantArray == nil) {
      _myConstantArray = @[ /*… your array here … */ ];
    }
    return _myConstantArray;
  }
}



@end
