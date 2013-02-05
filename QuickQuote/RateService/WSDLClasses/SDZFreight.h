/*
	SDZFreight.h
	The interface definition of properties and methods for the SDZFreight object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZFreight : SoapObject
{
	NSString* _description;
	NSDecimalNumber* _length;
	NSDecimalNumber* _width;
	NSDecimalNumber* _height;
	NSDecimalNumber* _freightClass;
	NSDecimalNumber* _weight;
	NSDecimalNumber* _volume;
	int _units;
	
}
		
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSDecimalNumber* length;
	@property (retain, nonatomic) NSDecimalNumber* width;
	@property (retain, nonatomic) NSDecimalNumber* height;
	@property (retain, nonatomic) NSDecimalNumber* freightClass;
	@property (retain, nonatomic) NSDecimalNumber* weight;
	@property (retain, nonatomic) NSDecimalNumber* volume;
	@property int units;

	+ (SDZFreight*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end