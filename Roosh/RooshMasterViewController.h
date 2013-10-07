//
//  RooshMasterViewController.h
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@class RestroomDataController;

@interface RooshMasterViewController : UITableViewController <UITableViewDelegate, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) RestroomDataController *dataController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
 
@end
