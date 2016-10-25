//
//  ViewController.m
//  OldSchoolCArray
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
  
  int count = 5;
  
  NSMutableArray *anotherArray = [[NSMutableArray alloc] init];
  
  
  // cArray is an array of “id” elements
  // count is the number of entries the cArray will have
  
  id cArray [count];
  id __strong *arrayPtr = cArray;
  
  /* populate the array
   arrayPtr[0] = …
   arrayPtr[1] = …
   arrayPtr[2] = …
   etc…
   */
  
  [anotherArray
   enumerateObjectsWithOptions:NSEnumerationConcurrent
   usingBlock:^(id obj, NSUInteger idx, 
                BOOL *stop) {
     arrayPtr[idx] = newObject;
   }];
  
  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
