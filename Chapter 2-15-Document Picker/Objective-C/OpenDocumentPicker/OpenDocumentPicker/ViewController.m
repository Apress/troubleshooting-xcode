//
//  ViewController.m
//  OpenDocumentPicker
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
  
  
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  [self openImportDocumentPicker:nil];
}




- (IBAction)openImportDocumentPicker:(id)sender {
  
  UIDocumentPickerViewController *documentPicker = 
   [[UIDocumentPickerViewController alloc] 
                              initWithDocumentTypes:@[@"public.image"]
                             inMode:UIDocumentPickerModeImport];
  
  documentPicker.modalPresentationStyle = 
         UIModalPresentationFormSheet;
  
  [self presentViewController:documentPicker
                     animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
