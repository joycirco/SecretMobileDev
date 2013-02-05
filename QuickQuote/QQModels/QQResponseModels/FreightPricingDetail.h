//
//  FreightPricingDetail.h
//  ModelClasses
//
//  Created by Darin Raffety on 1/20/13.
//
//

#import <Foundation/Foundation.h>
#import "FreightItem.h"

@interface FreightPricingDetail : FreightItem
{
    NSString* _description;
    double _ratedWeight;
    double _cost;
    double _charge;
    double _costRate;
    double _chargeRate;
}

@property (nonatomic,retain) NSString *description;
@property (nonatomic,assign) double ratedWeight;
@property (nonatomic,assign) double cost;
@property (nonatomic,assign) double charge;
@property (nonatomic,assign) double costRate;
@property (nonatomic,assign) double chargeRate;


@end
