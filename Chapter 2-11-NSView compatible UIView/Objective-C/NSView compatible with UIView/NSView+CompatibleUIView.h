//
//  NSView+CompatibleUIView.h
//  MacOBJC
//
//  Created by Fireball on 11/07/15.
//  Copyright (c) 2015 -. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSView (CompatibleUIView)


- (void)setAlpha:(CGFloat)point;
- (CGFloat)alpha;

- (void)setCenter:(CGPoint)point;
- (CGPoint)center;

+(void)fadeOut:(NSView*)viewToDissolve
  withDuration:(NSTimeInterval)duration;

+(void)fadeIn:(NSView*)viewToFadeIn
 withDuration:(NSTimeInterval)duration;

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations;

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
                 completion:(void (^)(BOOL
                                      finished))completion;



@end
