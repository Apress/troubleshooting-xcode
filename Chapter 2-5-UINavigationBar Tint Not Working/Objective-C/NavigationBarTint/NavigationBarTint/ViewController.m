//
//  ViewController.m
//  NavigationBarTint
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  UINavigationBar *bar = self.navigationController.navigationBar;
  bar.barTintColor = [UIColor greenColor];
}




- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
