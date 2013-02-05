//
//  QuoteRequest.m
//  ModelClasses
//
//  Created by Darin Raffety on 1/19/13.
//
//

#import "QuoteRequest.h"
#import "SDZRateServicePrivileged.h"


@implementation QuoteRequest

@synthesize originPostalCode = _originPostalCode;
@synthesize destinationPostalCode = _destinationPostalCode;
@synthesize storeLocationCode = _storeLocationCode;
@synthesize credentials = _credentials;

@synthesize pickupDateTime = _pickupDateTime;
@synthesize freightItems = _freightItems;
@synthesize pickupAccessorials = _pickupAccessorials;
@synthesize deliveryAccessorials = _deliveryAccessorials;
@synthesize shipmentAccessorials = _shipmentAccessorials;


-(void)submitRequest
{
	// Create the service
	SDZRateServicePrivileged* service = [SDZRateServicePrivileged service];
	service.logging = YES;
    
    service.username = @"testbot";
	service.password = @"supersecret486";
    
    SDZRateRequestPrivileged* reqRRP = [[SDZRateRequestPrivileged alloc] init];

    // credentials
    reqRRP.reqLoginName =  self.credentials.loginName;
    reqRRP.reqLoginPassword = self.credentials.password;
    reqRRP.reqAccountId = self.credentials.accountId;
    reqRRP.reqLoginToken = self.credentials.token;
    
    reqRRP.reqOriginZip = self.originPostalCode;
    reqRRP.reqDestZip = self.destinationPostalCode;
    
    reqRRP.reqPickupDate = self.pickupDateTime;

    int daysToAdd = 3;
    NSDate *newDate1 = [self.pickupDateTime dateByAddingTimeInterval:60*60*24*daysToAdd];
    reqRRP.reqDropDate = newDate1;
    
    // iterate through the freight items
    for(FreightItem* fqr in _freightItems)
    {
        //[fqr performSelector];
        SDZFreight* f = [[SDZFreight alloc] init];
        f.freightClass = fqr.freightClass;
        f.weight = fqr.weight;
        f.units = fqr.handlingUnits;
        f.length = fqr.length;
        f.width = fqr.width;
        f.height = fqr.height;
        
        [reqRRP.reqFreight addObject: f];
    }
    
    
    // add pallet position
    reqRRP.reqPalletCount = 2;
    SDZPalletPositions* pp = [[SDZPalletPositions alloc] init];
    pp.length = 10;
    pp.height = 10;
    pp.width = 10;
    pp.weight = 3600;
    pp.positionCount = 2;
    [reqRRP.reqPalletPositions addObject: pp];
    
    reqRRP.reqViewSpecificCostContracts = true;
    reqRRP.reqViewGeneralCostContracts = true;
    reqRRP.reqViewGeneralBillingContracts = true;
    reqRRP.reqViewSpecificBillingContracts = true;
    reqRRP.reqViewWebCostContracts = true;
    reqRRP.reqViewWebBillingContracts = true;
    reqRRP.reqViewRatingCost = 1;
    
	// Returns SDZRateReturn*
	/*  */
	//[service RateShipment:self action:@selector(RateShipmentHandler:) rrp: [[SDZRateRequestPrivileged alloc] init]];
	[service RateShipment:self action:@selector(RateShipmentHandler:) rrp: reqRRP];
    
}


// Handle the response from RateShipment.

- (void) RateShipmentHandler: (id) value {
    
	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Do something with the SDZRateReturn* result
    SDZRateReturn* result = (SDZRateReturn*)value;
	NSLog(@"RateShipment returned the value: %@", result);
    
}



-(void)addFreightItem:(FreightItem *)objFreight
{
    if(_freightItems == nil)
        _freightItems = [[NSMutableArray alloc] init];
    
    if(objFreight !=nil)
        [_freightItems addObject:objFreight];
}

-(void)addFreightItems:(NSMutableArray *)objFreightItems
{
    if(_freightItems == nil)
        _freightItems = [[NSMutableArray alloc] init];

    if(objFreightItems != nil)
        [_freightItems addObjectsFromArray:objFreightItems];
}

-(void)removeFreightItem:(FreightItem *)objFreight
{
    if((objFreight != nil)&&(_freightItems !=nil))
        [_freightItems removeObject:objFreight];
}

-(void)clearFreightItems
{
    if (_freightItems != nil)
        [_freightItems removeAllObjects];
}

-(void)addPickupAccessorial:(Accessorial *)objAcc
{
    if(_pickupAccessorials == nil)
        _pickupAccessorials = [[NSMutableArray alloc] init];
    
    if(objAcc !=nil)
        [_pickupAccessorials addObject:objAcc];
}

-(void)addPickupAccessorials:(NSMutableArray *)objAccs
{
    if(_pickupAccessorials == nil)
        _pickupAccessorials = [[NSMutableArray alloc] init];
    
    if(objAccs != nil)
        [_pickupAccessorials addObjectsFromArray:objAccs];
}

-(void)removePickupAccessorial:(Accessorial *)objAcc
{
    if((objAcc != nil)&&(_pickupAccessorials !=nil))
        [_pickupAccessorials removeObject:objAcc];
}

-(void)clearPickupAccessorials
{
    if (_pickupAccessorials != nil)
        [_pickupAccessorials removeAllObjects];
}

-(void)addDeliveryAccessorial:(Accessorial *)objAcc
{
    if(_deliveryAccessorials == nil)
        _deliveryAccessorials = [[NSMutableArray alloc] init];
    
    if(objAcc !=nil)
        [_deliveryAccessorials addObject:objAcc];
}

-(void)addDeliveryAccessorials:(NSMutableArray *)objAccs
{
    if(_deliveryAccessorials == nil)
        _deliveryAccessorials = [[NSMutableArray alloc] init];
    
    if(objAccs != nil)
        [_deliveryAccessorials addObjectsFromArray:objAccs];
}

-(void)removeDeliveryAccessorial:(Accessorial *)objAcc
{
    if((objAcc != nil)&&(_deliveryAccessorials !=nil))
        [_deliveryAccessorials removeObject:objAcc];
}

-(void)clearDeliveryAccessorials
{
    if(_deliveryAccessorials!=nil)
        [_deliveryAccessorials removeAllObjects];
}

-(void)addShipmentAccessorial:(Accessorial *)objAcc
{
    if(_shipmentAccessorials == nil)
        _shipmentAccessorials = [[NSMutableArray alloc] init];
    
    if(objAcc !=nil)
        [_shipmentAccessorials addObject:objAcc];
}

-(void)addShipmentAccessorials:(NSMutableArray *)objAccs
{
    if (_shipmentAccessorials != nil)
        _shipmentAccessorials = [[NSMutableArray alloc] init];
    if (objAccs != nil)
        [_shipmentAccessorials addObjectsFromArray:objAccs];
}

-(void)removeShipmentAccessorial:(Accessorial *)objAcc
{
    if((objAcc != nil)&&(_shipmentAccessorials !=nil))
        [_shipmentAccessorials removeObject:objAcc];
}

-(void)clearShipmentAccessorials
{
    if (_shipmentAccessorials != nil)
        [_shipmentAccessorials removeAllObjects];
}

@end
