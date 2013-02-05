//
//  QuoteRequest.h
//  ModelClasses
//
//  Created by Darin Raffety on 1/19/13.
//
//

#import <Foundation/Foundation.h>

#import "FreightItem.h"
#import "Accessorial.h"
#import "Credentials.h"


@interface QuoteRequest : NSObject
{
    NSString* _originPostalCode;
    NSString* _destinationPostalCode;
    NSDate* _pickupDateTime;
    NSString* _storeLocationCode;
    Credentials* _credentials;
    
    NSMutableArray* _freightItems;
    NSMutableArray* _pickupAccessorials;
    NSMutableArray* _deliveryAccessorials;
    NSMutableArray* _shipmentAccessorials;
}

@property (nonatomic,retain) NSString *originPostalCode;
@property (nonatomic,retain) NSString *destinationPostalCode;
@property (nonatomic,retain) NSDate *pickupDateTime;
@property (nonatomic,retain) NSString *storeLocationCode;
@property (nonatomic,retain) Credentials *credentials;

@property (nonatomic,retain) NSMutableArray *freightItems;
@property (nonatomic,retain) NSMutableArray *pickupAccessorials;
@property (nonatomic,retain) NSMutableArray *deliveryAccessorials;
@property (nonatomic,retain) NSMutableArray *shipmentAccessorials;


-(void)submitRequest;

-(void)addFreightItem:(FreightItem *)objFreight;
-(void)addFreightItems:(NSMutableArray *)objFreightItems;
-(void)removeFreightItem:(FreightItem *)objFreight;
-(void)clearFreightItems;

-(void)addPickupAccessorial:(Accessorial *)objAcc;
-(void)addPickupAccessorials:(NSMutableArray *)objAccs;
-(void)removePickupAccessorial:(Accessorial *)objAcc;
-(void)clearPickupAccessorials;

-(void)addDeliveryAccessorial:(Accessorial *)objAcc;
-(void)addDeliveryAccessorials:(NSMutableArray *)objAccs;
-(void)removeDeliveryAccessorial:(Accessorial *)objAcc;
-(void)clearDeliveryAccessorials;

-(void)addShipmentAccessorial:(Accessorial *)objAcc;
-(void)addShipmentAccessorials:(NSMutableArray *)objAccs;
-(void)removeShipmentAccessorial:(Accessorial *)objAcc;
-(void)clearShipmentAccessorials;

@end
