//
//  ViewController.m
//  DetectTarget
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
  
  NSLog(@"Target Running = %@", [self getTarget]);
}


- (NSString *) getTarget {
  
  NSDictionary *dict = [[NSBundle mainBundle] infoDictionary];
  NSArray *family = dict[@"UIDeviceFamily"];
  NSInteger device = [family[0] integerValue];
  
  return (device == 1) ? @"iPhone" : @"iPad";
}





- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
