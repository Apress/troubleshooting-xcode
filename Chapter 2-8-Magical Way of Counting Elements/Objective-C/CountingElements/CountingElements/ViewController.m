//
//  ViewController.m
//  CountingElements
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  // creating the dictionaries
  NSDictionary *dict1 = @{@"object"    : @"television",
                          @"selected"  : @(YES) };
  NSDictionary *dict2 = @{@"object"    : @"phone",
                          @"selected"  : @(NO)  };
  NSDictionary *dict3 = @{@"object"    : @"book",
                          @"selected"  : @(YES) };
  
  // creating the array
  NSArray *array = @[dict1, dict2, dict3];
  
  // this is the magical command
  NSInteger count = [[array valueForKeyPath:@"@sum.selected"] integerValue];
  
  NSLog(@"count %@", @(count)); // this will print 2 on console
  
  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
