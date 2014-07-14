//
//  HSDetailViewController.m
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSDetailViewController.h"
#import <JLRoutes.h>
#import <NSString+UrlEncode.h>

@implementation HSDetailViewController


- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.fact;
        self.navigationItem.title = self.detailItem.name;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)findWeather:(id)sender {
    [JLRoutes routeURL:[NSURL URLWithString:[NSString stringWithFormat:@"/weather/%@", [self.detailItem.name urlEncode]]]];
}

@end
