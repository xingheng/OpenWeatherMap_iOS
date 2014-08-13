//
//  OWMWeatherInfo.m
//  OpenWeatherMap_iOS
//
//  Created by Wei Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import "OWMWeatherInfo.h"

@implementation OWMWeatherInfo

+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"clouds.all": @"clouds",
                                                       @"order_details.price.usd": @"price"
                                                       }];
}

@end


@implementation OWMCoordinary
@end

@implementation OWMWeatherMain
@end

@implementation OWMWeatherSys
@end

@implementation OWMWeatherDetail
@end

@implementation OWMWind
@end

