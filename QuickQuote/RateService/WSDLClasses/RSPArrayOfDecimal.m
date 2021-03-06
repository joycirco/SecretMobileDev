/*
	RSPArrayOfDecimal.h
	The implementation of properties and methods for the RSPArrayOfDecimal array.
	Generated by SudzC.com
*/
#import "RSPArrayOfDecimal.h"

@implementation RSPArrayOfDecimal

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				NSDecimalNumber* value = [NSDecimalNumber decimalNumberWithString: [child stringValue]];
				[self addObject: value];
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [NSString stringWithFormat: @"%@", item]];
		}
		return s;
	}
@end
