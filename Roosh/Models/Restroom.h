//
//  Restroom.h
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restroom : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSNumber *fare;
@property (nonatomic, copy) NSNumber *rate;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *owner;
@property (nonatomic, copy) NSURL *link;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic) CGPoint *coordinates;
-(id)initWithName:(NSString*)name at:(NSString*)address withCoordinates:(CGPoint)location costing:(NSNumber*)fare rated:(NSNumber*)rate;
-(id)initWithName:(NSString*)name ownedBy:(NSString*)owner at:(NSString*)address withCoordinates:(CGPoint)coordinates withURL:(NSURL*)url withPhonenumber:(NSString*)phone costing:(NSNumber*)fare rated:(NSNumber*)rate;

@end
