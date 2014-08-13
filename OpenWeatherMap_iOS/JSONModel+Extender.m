//
//  JSONModel+JSONModelExtender.m
//  OpenWeatherMap_iOS
//
//  Created by Wei Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import "JSONModel+Extender.h"

@implementation JSONModel (JSONModelExtender)

- (id)init
{
    if (self = [super init])
    {
        [JSONModel setGlobalKeyMapper:[
                                       [JSONKeyMapper alloc] initWithDictionary:@{
                                                                                  @"id":@"ID",
                                                                                  }]
         ];
    }
    return self;
}

+ (BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}

@end
