//
//  HSDetailViewController.h
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSCity.h"

@interface HSDetailViewController : UIViewController

@property (strong, nonatomic) HSCity *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
- (IBAction)findWeather:(id)sender;

@end
