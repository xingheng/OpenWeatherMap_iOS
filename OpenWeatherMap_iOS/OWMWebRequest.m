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
#import "OWMForecastInfo.h"

NSString * const kOWMRequestPrefix = @"http://api.openweathermap.org/data/2.5/";

@implementation OWMWebRequest

- (id)init
{
    if (self = [super init])
    {
        self.cityName = @"beijing";
        self.requestKind = OWMRequestWeather;
        
        // For test
        [self getResponse];
        
    }
    return self;
}

- (NSString *)generateRequestURL
{
    NSString *request = nil;
    
    switch (self.requestKind) {
        case OWMRequestWeather:
            request = [NSString stringWithFormat:@"%@weather?q=%@", kOWMRequestPrefix, self.cityName];
            break;
        case OWMRequestForecast:
            request = [NSString stringWithFormat:@"%@forecast?q=%@", kOWMRequestPrefix, self.cityName];
            break;
    }
    return request;
}

- (JSONModel *)getResponse
{
    __block JSONModel *result = nil;
    NSString *request = [self generateRequestURL];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:request
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             //NSLog(@"JSON: %@", responseObject);
             
             NSError *err = nil;
             
             switch (self.requestKind) {
                 case OWMRequestWeather:
                     result = [[OWMWeatherInfo alloc] initWithDictionary:responseObject error:&err];
                     break;
                 case OWMRequestForecast:
                     result = [[OWMForecastInfo alloc] initWithDictionary:responseObject error:&err];
                     break;
             }
             //NSLog(@"%@", result);
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
    
    return result;
}

@end
