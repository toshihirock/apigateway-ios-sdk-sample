/*
 Copyright 2010-2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License").
 You may not use this file except in compliance with the License.
 A copy of the License is located at

 http://aws.amazon.com/apache2.0

 or in the "license" file accompanying this file. This file is distributed
 on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 express or implied. See the License for the specific language governing
 permissions and limitations under the License.
 */
 

#import <Foundation/Foundation.h>
#import <AWSCore/AWSCore.h>
#import "CLIWeather_clouds.h"
#import "CLIWeather_coord.h"
#import "CLIWeather_main.h"
#import "CLIWeather_sys.h"
#import "CLIWeather_weather_item.h"
#import "CLIWeather_wind.h"

 
@interface CLIWeather : AWSModel

@property (nonatomic, strong, nullable) CLIWeather_coord *coord;


@property (nonatomic, strong, nullable) NSArray *weather;


@property (nonatomic, strong, nullable) NSString *base;


@property (nonatomic, strong, nullable) CLIWeather_main *main;


@property (nonatomic, strong, nullable) NSNumber *visibility;


@property (nonatomic, strong, nullable) CLIWeather_wind *wind;


@property (nonatomic, strong, nullable) CLIWeather_clouds *clouds;


@property (nonatomic, strong, nullable) NSNumber *dt;


@property (nonatomic, strong, nullable) CLIWeather_sys *sys;


@property (nonatomic, strong, nullable) NSNumber *_id;


@property (nonatomic, strong, nullable) NSString *name;


@property (nonatomic, strong, nullable) NSNumber *cod;


@end
