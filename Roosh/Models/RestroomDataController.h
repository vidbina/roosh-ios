//
//  RestroomDataController.h
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Restroom;

@interface RestroomDataController : NSObject
@property (nonatomic, retain) NSMutableArray* repository;
- (NSUInteger)countOfList;
- (Restroom*)objectInListAtIndex:(NSUInteger)index;
- (void)addRestroom:(Restroom*)restRoom;
@end
