//
//  ViewController.m
//  ExtractDictionaryFromArray
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
  
  NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:5000];
  NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:500];
  NSDate *date3 = [NSDate dateWithTimeIntervalSince1970:2500];
  
  // the dictionaries with random dates
  NSDictionary *obj1 = @{ @"name":@"car",   @"date":date1};
  NSDictionary *obj2 = @{ @"name":@"boat",  @"date":date2};
  NSDictionary *obj3 = @{ @"name":@"plane", @"date":date3};
  // the unsorted array
  NSArray *unsortedArray = @[obj1, obj2, obj3];
  
  // create a NSSortDescriptor to sort the array
  NSSortDescriptor *dateDescriptor = [NSSortDescriptor
                                      sortDescriptorWithKey:@"date" ascending:YES];
  
  NSArray *sortDescriptors = @[dateDescriptor];
  
  // sorting the array
  NSArray *sortedArray = [unsortedArray 
                          sortedArrayUsingDescriptors:sortDescriptors];
  
  // because the array is sorted, the last object is the
  // one with the most recent date
  NSDictionary *mostRecent = [sortedArray lastObject];
  
  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
