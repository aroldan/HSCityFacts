//
//  HSCity.h
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSCity : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *fact;
@property (strong, nonatomic) NSString *zip;

+ (instancetype)cityWithName:(NSString *)name fact:(NSString *)fact zip:(NSString *)zip;

@end
