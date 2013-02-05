/*
	SDZCarrierScacs.h
	The interface definition of properties and methods for the SDZCarrierScacs object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOfString;

@interface SDZCarrierScacs : SoapObject
{
	NSMutableArray* _scacs;
	NSString* _contractId;
	NSString* _strategyId;
	
}
		
	@property (retain, nonatomic) NSMutableArray* scacs;
	@property (retain, nonatomic) NSString* contractId;
	@property (retain, nonatomic) NSString* strategyId;

	+ (SDZCarrierScacs*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
