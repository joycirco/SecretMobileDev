//
//  FreightItem.m
//  ModelClasses
//
//  Created by Darin Raffety on 1/19/13.
//
//

#import "FreightItem.h"

@implementation FreightItem

@synthesize handlingUnits = _handlingUnits;
@synthesize handlingUnitType = _handlingUnitType;
@synthesize freightClass = _freightClass;

@synthesize weight = _weight;
@synthesize weightUOM = _weightUOM;

@synthesize height = _height;
@synthesize length = _length;
@synthesize width = _width;
@synthesize dimUOM = _dimUOM;

@synthesize NMFC = _NMFC;

@synthesize isStackable = _isStackable;

@synthesize accessorials = _accessorials;


-(void)addAccessorial:(Accessorial *)objAcc
{
    if (_accessorials == nil)
        _accessorials = [[NSMutableArray alloc] init];
    
    if (objAcc != nil)
        [_accessorials addObject:objAcc];
}

-(void)addAccessorials:(NSMutableArray *)objAccs
{
    if (_accessorials == nil)
        _accessorials = [[NSMutableArray alloc] init];
    
    [_accessorials addObjectsFromArray:objAccs];
    
}

-(void)removeAccessorial:(Accessorial *)objAcc
{
    if(_accessorials != nil && objAcc != nil)
      [_accessorials removeObject:objAcc];
}

-(void)clearAccessorials
{
    if(_accessorials != nil)
        [_accessorials removeAllObjects];
}

@end
