//
//  Entity.m
//  CoreDataConcurrency
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress

#import "Entity.h"

@implementation Entity


+ (NSArray *)allObjectsInContext:(NSManagedObjectContext *) context
{
  NSArray *all = nil;
  
  NSFetchRequest *request = [[NSFetchRequest alloc] init];
  
  request.entity = [NSEntityDescription
                    entityForName:NSStringFromClass([self class])
                    inManagedObjectContext:context];
  
  [request setReturnsDistinctResults:YES];
  
  
  NSError *error = nil;
  
  
  @synchronized(context) {
    all = [context executeFetchRequest:request error:&error];
  }
  
  return all;
}



@end
