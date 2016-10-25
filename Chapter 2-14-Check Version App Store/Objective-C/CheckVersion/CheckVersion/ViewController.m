//
//  ViewController.m
//  CheckVersion
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
  
  [self getAppVersionAndRunOnCompletion:^(NSString *version) {
    NSLog(@"latest version on the app store = %@", version);
  }];
  
}


-(void)getAppVersionAndRunOnCompletion:(void (^)(NSString *version))completionBlock {
  
  // get the app’s bundle identifier
  NSString *bundleIdentifier = @"com.yourCompany.yourAppBundleID";
  
  // use iTunes API to get data about the application
  NSURL *lookupURL = [NSURL URLWithString:[NSString stringWithFormat:
                                           @"http://itunes.apple.com/lookup?bundleId=%@",
                                           bundleIdentifier]];
  
  
  NSURLSession *session = [NSURLSession sharedSession];
  [[session dataTaskWithURL:lookupURL
          completionHandler:^(NSData *data,
                              NSURLResponse *response,
                              NSError *error) {
            
            if ( (data == nil) || (error != nil) ) {
              completionBlock(nil);
              return;
            }
            
            NSDictionary *jsonResults = [NSJSONSerialization
                                         JSONObjectWithData:data options:0 error:nil];
            
            NSUInteger resultCount = [[jsonResults objectForKey:
                                       @"resultCount"] integerValue];
            
            // if number of objects on jsonResults is zero, exit with nil
            if (!resultCount){
              completionBlock(nil);
              return;
            }
            
            NSDictionary *appDetails = [[jsonResults objectForKey:
                                         @"results"] firstObject];
            NSString *latestVersion = [appDetails objectForKey:
                                       @"version"];
            
            completionBlock(latestVersion);

            
          }] resume];
  
}



- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
