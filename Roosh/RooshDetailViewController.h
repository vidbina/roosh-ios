//
//  RooshDetailViewController.h
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RooshDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
