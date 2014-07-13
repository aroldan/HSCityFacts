//
//  HSCityFactsApp.m
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSCityFactsApp.h"


@implementation HSCityFactsApp

+ (UINavigationController *)baseNavigationController {
    return [[UIStoryboard storyboardWithName:@"CityFacts" bundle:nil] instantiateInitialViewController];
}

+ (NSString *)appIdentifierString {
    return @"City Facts";
}

+ (NSArray *)routesToRegister {
    return @[];
}

@end
