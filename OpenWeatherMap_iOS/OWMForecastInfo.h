//
//  OWMForecastInfo.h
//  OpenWeatherMap_iOS
//
//  Created by Will Han on 8/14/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>
#import "OWMWeatherInfo.h"


@class OWMCity, OWMForecastItem, OWMForecastItemMain;


@protocol OWMForecastItem

@end


@interface OWMForecastInfo : JSONModel

@property (strong, nonatomic) OWMCity *city;
@property (assign, nonatomic) int cnt;
@property (assign, nonatomic) int cod;
@property (strong, nonatomic) NSArray<OWMForecastItem> *list;
@property (strong, nonatomic) NSString *message;

@end


@interface OWMCity : JSONModel

@property (strong, nonatomic) OWMCoordinary *coord;
@property (assign, nonatomic) NSString *country;
@property (assign, nonatomic) int ID;
@property (assign, nonatomic) NSString *name;
@property (assign, nonatomic) int population;
@property (assign, nonatomic) int sys_population;

@end


@interface OWMForecastItem : JSONModel

@property (assign, nonatomic) int clouds;
@property (assign, nonatomic) int dt;
@property (strong, nonatomic) NSString *dt_txt;
@property (strong, nonatomic) OWMForecastItemMain *main;
@property (assign, nonatomic) int rain3h;
@property (strong, nonatomic) NSString *syspod;
@property (strong, nonatomic) NSArray<OWMWeatherDetail> *weather;
@property (strong, nonatomic) OWMWind *wind;

@end


@interface OWMForecastItemMain : JSONModel

@property (assign, nonatomic) float grnd_level;
@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;
@property (assign, nonatomic) float sea_level;
@property (assign, nonatomic) float temp;
@property (assign, nonatomic) float temp_kf;
@property (assign, nonatomic) float temp_max;
@property (assign, nonatomic) float temp_min;

@end





