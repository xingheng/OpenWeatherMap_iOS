//
//  OWMForecastInfo.m
//  OpenWeatherMap_iOS
//
//  Created by Will Han on 8/14/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import "OWMForecastInfo.h"

@implementation OWMForecastInfo

@end

@implementation OWMCity

+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"sys.population": @"sys_population",
                                                       }];
}

@end

@implementation OWMForecastItem

+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"clouds.all": @"clouds",
                                                       @"rain.3h": @"rain3h",
                                                       @"sys.pod": @"syspod",
                                                       }];
}

@end

@implementation OWMForecastItemMain

@end

