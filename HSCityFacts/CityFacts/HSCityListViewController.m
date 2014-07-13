//
//  HSCityListViewController.h
//  HSCityFacts
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSCityListViewController.h"
#import "HSDetailViewController.h"
#import "HSCity.h"

@implementation HSCityListViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cities = @[
                    [HSCity cityWithName:@"Boston" fact:@"The largest city in New England, covering 48 square miles. It had an estimated population of 645,966 in 2014." zip:@"02110"],
                    [HSCity cityWithName:@"Chicago" fact:@"It is the most populous city in both the U.S. state of Illinois and the American Midwest" zip:@"60290"],
                    [HSCity cityWithName:@"New York" fact:@"New York is the most populous city in the United States and the center of one of the most populous urban agglomerations in the world—the New York metropolitan area." zip:@"10023"],
                    [HSCity cityWithName:@"San Francisco" fact:@"San Francisco (Spanish for \"Saint Francis\") was founded on June 29, 1776, when colonists from Spain established a fort at the Golden Gate and a mission named for St. Francis of Assisi a few miles away." zip:@"94117"]
                    ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    HSCity *city = self.cities[indexPath.row];
    cell.textLabel.text = city.name;
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HSCity *object = self.cities[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

@end
