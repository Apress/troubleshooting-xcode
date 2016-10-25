//
//  ViewController.m
//  RotatingPickerView
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

#import "ViewController.h"
#import "RotatingPickerView.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet RotatingPickerView *picker;

@end

@implementation ViewController



- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  // The next lines are there just to detect when the wheels stop spinning
  // when they do, animationFinished:finished:context: will trigger
  [UIView beginAnimations:@"1" context:nil]; // nil = dummy
  [UIPickerView setAnimationDelegate:self];
  [UIPickerView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
  
  [self.picker selectRow:40 inComponent:0 animated:YES];
  
  [UIView commitAnimations];
  
  
}



- (void) animationFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context {
  NSLog(@"animation finished!");
}



@end
