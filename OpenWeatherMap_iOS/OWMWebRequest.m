//
//  OWMWebRequest.m
//  OpenWeatherMap_iOS
//
//  Created by Wei Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import "OWMWebRequest.h"
#import <JSONModel/JSONModel.h>
#import "OWMWeatherInfo.h"

NSString * const kOWMRequestPrefix = @"http://api.openweathermap.org/data/2.5/";

@implementation OWMWebRequest

- (id)init
{
    if (self = [super init])
    {
        // For test
        [self getResponse];
        
    }
    return self;
}

- (NSString *)generateRequestURL
{
    NSString *request = [NSString stringWithFormat:@"%@weather?q=%@", kOWMRequestPrefix, @"beijing"];
    return request;
}

- (void)getResponse
{
    NSString *request = [self generateRequestURL];
    
    // Test AFHTTPRequestOperationManager
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:request
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
             
             NSError *err = nil;
             
             OWMWeatherInfo *model = [[OWMWeatherInfo alloc] initWithDictionary:responseObject error:&err];
             NSLog(@"%@", model);
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
}

@end
