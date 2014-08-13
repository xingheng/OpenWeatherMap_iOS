//
//  OWMWebRequest.h
//  OpenWeatherMap_iOS
//
//  Created by Wei Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

typedef enum _OWMRequestKind {
    OWMRequestWeather,
    OWMRequestForecast
} OWMRequestKind;

@interface OWMWebRequest : NSObject

@property (assign, nonatomic) NSString *cityName;
@property (assign, nonatomic) OWMRequestKind requestKind;

@end
