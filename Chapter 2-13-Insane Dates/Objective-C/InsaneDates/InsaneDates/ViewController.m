//
//  ViewController.m
//  InsaneDates
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
  
  NSDateComponents *comps = [[NSDateComponents alloc] init];
  [comps setDay:22];
  [comps setMonth:8];
  [comps setYear:2020];
  
  NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:
                           NSCalendarIdentifierGregorian];
  
  // the magical line
  // enable this line to fix the problem
  // gregorian.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
  
  NSDate *date = [gregorian dateFromComponents:comps];
  
  NSLog(@"Date is %@", date);
  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
