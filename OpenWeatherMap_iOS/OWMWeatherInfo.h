//
//  OWMWeatherInfo.h
//  OpenWeatherMap_iOS
//
//  Created by Wei Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@class OWMCoordinary, OWMWeatherMain, OWMWeatherSys, OWMWeatherDetail, OWMWind;

@protocol OWMWeatherDetail
@end

@interface OWMWeatherInfo : JSONModel

@property (strong, nonatomic) NSString *base;
@property (assign, nonatomic) int clouds;
@property (assign, nonatomic) int cod;
@property (strong, nonatomic) OWMCoordinary *coord;
@property (assign, nonatomic) int dt;
@property (assign, nonatomic) int ID;
@property (strong, nonatomic) OWMWeatherMain *main;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) OWMWeatherSys *sys;
@property (strong, nonatomic) NSArray<OWMWeatherDetail> *weather;
@property (strong, nonatomic) OWMWind *wind;

@end


@interface OWMCoordinary : JSONModel

@property (assign, nonatomic) float lat;
@property (assign, nonatomic) float lon;

@end


@interface OWMWeatherMain : JSONModel

@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;
@property (assign, nonatomic) float temp;
@property (assign, nonatomic) float temp_max;
@property (assign, nonatomic) float temp_min;

@end


@interface OWMWeatherSys : JSONModel

@property (assign, nonatomic) NSString *country;
@property (assign, nonatomic) int ID;
@property (assign, nonatomic) NSString *message;
@property (assign, nonatomic) int sunrise;
@property (assign, nonatomic) int sunset;
@property (assign, nonatomic) int type;

@end


@interface OWMWeatherDetail : JSONModel

@property (assign, nonatomic) NSString *description;
@property (assign, nonatomic) NSString *icon;
@property (assign, nonatomic) int ID;
@property (assign, nonatomic) NSString *main;

@end


@interface OWMWind : JSONModel

@property (assign, nonatomic) float deg;
@property (assign, nonatomic) float speed;

@end
