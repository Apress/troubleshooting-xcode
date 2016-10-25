//
//  main.m
//  ApplicationCrashWithoutClues
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


// OLD VERSION
//int main(int argc, char * argv[]) {
//  @autoreleasepool {
//      return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//  }
//}


// NEW VERSION

int main(int argc, char *argv[]) {
  int retVal;
  @autoreleasepool {
    @try {
      retVal = UIApplicationMain(argc, argv, nil, nil); //***
    }
    @catch (NSException *exception) {
      NSLog(@"\n\nSTACK SYMBOLS\n%@",           [exception callStackSymbols]);
      NSLog(@"\n\nSTACK RETURN ADDRESSES\n%@",  [exception callStackReturnAddresses]);
      NSLog(@"\n\nOBJECT: %@",                  [exception name]);
      NSLog(@"\n\nUSER INFO DICT: %@",          [exception userInfo]);
      NSLog(@"\n\nREASON: %@",                  [exception reason]);
      retVal = 1;
    }
  }
  return retVal;
}
