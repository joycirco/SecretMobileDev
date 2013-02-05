/*
	SDZArrayOfCwtPricingDetails.h
	The implementation of properties and methods for the SDZArrayOfCwtPricingDetails array.
	Generated by SudzC.com
*/
#import "SDZArrayOfCwtPricingDetails.h"

#import "SDZCwtPricingDetails.h"
@implementation SDZArrayOfCwtPricingDetails

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZCwtPricingDetails* value = [[SDZCwtPricingDetails createWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"CwtPricingDetails"]];
		}
		return s;
	}
@end