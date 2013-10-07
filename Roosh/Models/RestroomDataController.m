//
//  RestroomDataController.m
//  Roosh
//
//  Created by David Asabina on 10/6/13.
//  Copyright (c) 2013 Suprnovae. All rights reserved.
//

#import "RestroomDataController.h"

#import "Restroom.h"

@interface RestroomDataController ()
- (void)populateDummyDataListForRotterdam;
@end

@implementation RestroomDataController
- (void)populateDummyDataListForRotterdam
{
    NSMutableArray *restroomsInRotterdam = [[NSMutableArray alloc] init];
    self.repository = restroomsInRotterdam;
    [self addRestroom: [[Restroom alloc] initWithName:@"2 the loo Beurs" at:@"Metrostation Beurs, Coolsingel 227, 3012 AG Rotterdam, Nederland" withCoordinates: CGPointMake(51.91821, 4.48030) costing:[NSNumber numberWithInt:1] rated:[NSNumber numberWithInt:8]]];
    [self addRestroom: [[Restroom alloc] initWithName:@"Vendor Zuidplein" at:@"Zuidplein Hoog 982 / 1014" withCoordinates:CGPointMake(51.88947, 4.49299) costing:[NSNumber numberWithInt:2] rated:[NSNumber numberWithInt:7]]];
    [self addRestroom:[[Restroom alloc] initWithName:@"de Bijenkorf Rotterdam" ownedBy:@"de Bijenkorf" at:@"Coolsingel 105" withCoordinates:CGPointMake(51.92020, 4.47843) withURL:[NSURL URLWithString:@"http://www.debijenkorf.nl/rotterdam"] withPhonenumber:@"0800-0818" costing:nil rated:[NSNumber numberWithInt:8]]];
    [self addRestroom:[[Restroom alloc] initWithName:@"Rotterdam Centraal Station" ownedBy:@"NS Rotterdam Centraal" at:@"Stationsplein 1" withCoordinates:CGPointMake(51.92503, 4.46874) withURL:[NSURL URLWithString:@"www.rotterdamcentraal.nl"] withPhonenumber:nil costing:[NSNumber numberWithFloat:0.5] rated:[NSNumber numberWithInt:8]]];
    NSLog(@"populated with dummy data");
}

- (id)init
{
    if (self = [super init])
    {
        [self populateDummyDataListForRotterdam];
        NSLog(@"initialized and populated");
        return self;
    }
    NSLog(@"nil init");
    return nil;
}

- (NSUInteger)countOfList
{
    return [self.repository count];
}

- (Restroom*)objectInListAtIndex:(NSUInteger)idx
{
    return [self.repository objectAtIndex:idx];
}

- (void)addRestroom:(Restroom *)restRoom
{
    [self.repository addObject:restRoom];
}

@end
