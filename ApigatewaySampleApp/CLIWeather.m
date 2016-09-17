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
 

#import "CLIWeather.h"

@implementation CLIWeather

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"coord": @"coord",
             @"weather": @"weather",
             @"base": @"base",
             @"main": @"main",
             @"visibility": @"visibility",
             @"wind": @"wind",
             @"clouds": @"clouds",
             @"dt": @"dt",
             @"sys": @"sys",
             @"_id": @"id",
             @"name": @"name",
             @"cod": @"cod"
             };
}

+ (NSValueTransformer *)coordJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[CLIWeather_coord class]];
}

+ (NSValueTransformer *)weatherJSONTransformer {
	return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[CLIWeather_weather_item class]];
}

+ (NSValueTransformer *)mainJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[CLIWeather_main class]];
}

+ (NSValueTransformer *)windJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[CLIWeather_wind class]];
}

+ (NSValueTransformer *)cloudsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[CLIWeather_clouds class]];
}

+ (NSValueTransformer *)sysJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[CLIWeather_sys class]];
}

@end
