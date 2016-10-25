//
//  RotatingPickerView.m
//  RotatingPickerView
//
//  Copyright © 2015 - by Magno Urbano - All rights reserved.
//  Part of the book Troubleshooting Xcode, published by Apress
//

#import "RotatingPickerView.h"

#define states @[@"Alabama", @"Alaska", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Delaware", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming"]


@interface RotatingPickerView() <UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation RotatingPickerView


- (void)awakeFromNib {
  [super awakeFromNib];
  self.delegate = self;
  self.dataSource = self;
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  return [states count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
                      titleForRow:(NSInteger)row
                     forComponent:(NSInteger)component {
  return states[row];
}


@end
