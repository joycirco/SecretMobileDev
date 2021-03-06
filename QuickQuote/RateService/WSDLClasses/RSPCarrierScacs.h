/*
	RSPCarrierScacs.h
	The interface definition of properties and methods for the RSPCarrierScacs object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class RSPArrayOfString;

@interface RSPCarrierScacs : SoapObject
{
	NSMutableArray* _scacs;
	NSString* _contractId;
	NSString* _strategyId;
	
}
		
	@property (retain, nonatomic) NSMutableArray* scacs;
	@property (retain, nonatomic) NSString* contractId;
	@property (retain, nonatomic) NSString* strategyId;

	+ (RSPCarrierScacs*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
