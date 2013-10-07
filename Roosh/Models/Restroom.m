//
//  Restroom.m
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import "Restroom.h"

@implementation Restroom
- (id)initWithName:(NSString*)name at:(NSString*)address withCoordinates:(CGPoint)coordinates costing:(NSNumber*)fare rated:(NSNumber*)rate
{
    self = [super init];
    if(self)
    {
        _name = name;
        _address = address;
        _coordinates = &coordinates;
        _fare = fare;
        _rate = rate;
        return self;
    }
    return nil;
}

- (id)initWithName:(NSString *)name ownedBy:(NSString *)owner at:(NSString *)address withCoordinates:(CGPoint)coordinates withURL:(NSURL *)url withPhonenumber:(NSString *)phone costing:(NSNumber *)fare rated:(NSNumber *)rate
{
    self = [super init];
    if(self)
    {
        _name = name;
        _owner = owner;
        _address = address;
        _coordinates = &coordinates;
        _link = url;
        _phone = phone;
        _fare = fare;
        _rate = rate;
        
        return self;
    }
    return nil;
}

@end
