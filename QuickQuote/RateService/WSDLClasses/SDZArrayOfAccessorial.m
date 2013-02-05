/*
	SDZArrayOfAccessorial.h
	The implementation of properties and methods for the SDZArrayOfAccessorial array.
	Generated by SudzC.com
*/
#import "SDZArrayOfAccessorial.h"

#import "SDZAccessorial.h"
@implementation SDZArrayOfAccessorial

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZAccessorial* value = [[SDZAccessorial createWithNode: child] object];
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
			[s appendString: [item serialize: @"Accessorial"]];
		}
		return s;
	}
@end