//
//  ViewController.m
//  CoreDataConcurrency
//
//  Created by Magno Urbano on 16/07/15.
//  Copyright © 2015 -. All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress

#import "ViewController.h"
#import "Entity.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
   // enable these lines to see Core Data debug information on console
//  AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
//  
//  Entity* newTask = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:delegate.managedObjectContext];
//  Entity* newTask2 = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:delegate.managedObjectContext];
//  Entity* newTask3 = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:delegate.managedObjectContext];
//  
//  NSError *error;
//  [delegate.managedObjectContext save:&error];

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
