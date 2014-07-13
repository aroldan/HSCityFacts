//
//  HSCity.m
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSCity.h"

@implementation HSCity

+ (instancetype)cityWithName:(NSString *)name fact:(NSString *)fact zip:(NSString *)zip {
    HSCity *newCity = [[HSCity alloc] init];
    newCity.name = name;
    newCity.fact = fact;
    newCity.zip = zip;
    
    return newCity;
}

@end
