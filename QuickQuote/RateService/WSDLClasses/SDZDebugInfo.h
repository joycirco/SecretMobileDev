/*
	SDZDebugInfo.h
	The interface definition of properties and methods for the SDZDebugInfo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOfString;

@interface SDZDebugInfo : SoapObject
{
	NSMutableArray* _info;
	
}
		
	@property (retain, nonatomic) NSMutableArray* info;

	+ (SDZDebugInfo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end