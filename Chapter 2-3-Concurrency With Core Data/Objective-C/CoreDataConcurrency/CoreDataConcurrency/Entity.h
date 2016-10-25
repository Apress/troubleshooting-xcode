//
//  Entity.h
//  CoreDataConcurrency
//
//  Created by Magno Urbano on 16/07/15.
//  Copyright © 2015 -. All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entity : NSManagedObject

+ (NSArray *)allObjectsInContext:(NSManagedObjectContext *) context;


@end

NS_ASSUME_NONNULL_END

#import "Entity+CoreDataProperties.h"
