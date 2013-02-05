/*
	SDZRatedAccessorialPrivileged.h
	The interface definition of properties and methods for the SDZRatedAccessorialPrivileged object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZRatedAccessorialPrivileged : SoapObject
{
	NSString* _accCode;
	NSString* _accDescription;
	NSString* _accCostRateQualifier;
	NSString* _accChargeRateQualifier;
	NSDecimalNumber* _accRate;
	BOOL _accIsMin;
	BOOL _accIsMax;
	NSDecimalNumber* _accCharge;
	NSDecimalNumber* _accCost;
	
}
		
	@property (retain, nonatomic) NSString* accCode;
	@property (retain, nonatomic) NSString* accDescription;
	@property (retain, nonatomic) NSString* accCostRateQualifier;
	@property (retain, nonatomic) NSString* accChargeRateQualifier;
	@property (retain, nonatomic) NSDecimalNumber* accRate;
	@property BOOL accIsMin;
	@property BOOL accIsMax;
	@property (retain, nonatomic) NSDecimalNumber* accCharge;
	@property (retain, nonatomic) NSDecimalNumber* accCost;

	+ (SDZRatedAccessorialPrivileged*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
