//
//  RestroomsViewController.m
//  Roosh
//
//  Created by David Asabina on 10/7/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import "RestroomsViewController.h"

#import "RestroomDataController.h"
#import "Restroom.h"

@interface RestroomsViewController ()

@end

@implementation RestroomsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"loaded view");
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"getting a cell for index %@", [indexPath description]);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"facility" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d rows in section %d", [self.dataController countOfList], section);
    return [self.dataController countOfList];
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"configuring a cell for %@", [indexPath description]);
    //NSManagedObject *object = [self.fetchedResultsController objectAtIndexPath:indexPath];
    //cell.textLabel.text = [[object valueForKey:@"timeStamp"] description];
    Restroom *restroom = [self.dataController objectInListAtIndex:indexPath.row];
    if(restroom)
    {
        ((UILabel*)[cell viewWithTag:1]).text = restroom.name;
        ((UILabel*)[cell viewWithTag:2]).text = restroom.address;
        ((UILabel*)[cell viewWithTag:3]).text = @"2 mins";
    }
}

- (RestroomDataController*)dataController
{
    if(_dataController != nil) {
        NSLog(@"accessing datacontroller");
        return _dataController;
    }
    
    // TODO: Fetch real data from the web whenever the webapp is live
    NSLog(@"allocating data controller");
    self.dataController = [[RestroomDataController alloc] init];
    return _dataController;
}
@end
