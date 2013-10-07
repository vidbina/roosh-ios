//
//  RestroomsViewController.h
//  Roosh
//
//  Created by David Asabina on 10/7/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RestroomDataController;

@interface RestroomsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) RestroomDataController *dataController;

@end
