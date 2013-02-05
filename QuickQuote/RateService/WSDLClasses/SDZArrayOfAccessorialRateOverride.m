/*
	SDZArrayOfAccessorialRateOverride.h
	The implementation of properties and methods for the SDZArrayOfAccessorialRateOverride array.
	Generated by SudzC.com
*/
#import "SDZArrayOfAccessorialRateOverride.h"

#import "SDZAccessorialRateOverride.h"
@implementation SDZArrayOfAccessorialRateOverride

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZAccessorialRateOverride* value = [[SDZAccessorialRateOverride createWithNode: child] object];
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
			[s appendString: [item serialize: @"AccessorialRateOverride"]];
		}
		return s;
	}
@end