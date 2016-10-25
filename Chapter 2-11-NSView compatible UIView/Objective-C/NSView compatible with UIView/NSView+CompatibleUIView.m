//
//  NSView+CompatibleUIView.m
//  MacOBJC
//
//  Created by Fireball on 11/07/15.
//  Copyright (c) 2015 -. All rights reserved.
//

#import "NSView+CompatibleUIView.h"

@implementation NSView (CompatibleUIView)


- (void)setAlpha:(CGFloat)point {
  [self setAlphaValue:point];
}

- (CGFloat)alpha {
  return self.alphaValue;
}

- (void)setCenter:(CGPoint)point {
  CGSize size = self.frame.size;
  
  CGRect newFrame = CGRectZero;
  newFrame.size = size;
  
  CGFloat width = CGRectGetWidth(self.frame);
  CGFloat height = CGRectGetHeight(self.frame);
  
  CGFloat x = floorf(point.x - (width / 2.0f) );
  CGFloat y = floorf(point.y - (height / 2.0f) );
  
  newFrame.origin.x = x;
  newFrame.origin.y = y;
  
  [self setFrame:newFrame];
}

- (CGPoint)center {
  
  return CGPointMake(CGRectGetMidX(self.frame),
                     CGRectGetMidY(self.frame));
  
}

+(void)fadeOut:(NSView*)viewToDissolve
  withDuration:(NSTimeInterval)duration
{
  [NSAnimationContext beginGrouping];
  [[NSAnimationContext currentContext] setDuration:duration];
  [[viewToDissolve animator] setAlphaValue:0.0];
  [NSAnimationContext endGrouping];
  
}

+(void)fadeIn:(NSView*)viewToFadeIn
 withDuration:(NSTimeInterval)duration
{
  [NSAnimationContext beginGrouping];
  [[NSAnimationContext currentContext] setDuration:duration];
  [[viewToFadeIn animator] setAlphaValue:1.0f];
  [NSAnimationContext endGrouping];
}

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
{
  [NSAnimationContext beginGrouping];
  [[NSAnimationContext currentContext] setDuration:duration];
  animations();
  [NSAnimationContext endGrouping];
}

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
                 completion:(void (^)(BOOL finished))completion
{
  [NSAnimationContext beginGrouping];
  [[NSAnimationContext currentContext] setDuration:duration];
  animations();
  [NSAnimationContext endGrouping];
  
  if(animations)
  {
    id completionBlock = [completion copy];
    [self performSelector:@selector(runEndBlock:)
               withObject:completionBlock
               afterDelay:duration];
  }
}

+ (void)runEndBlock:(void (^)(void))completionBlock
{
  completionBlock();
}


@end
