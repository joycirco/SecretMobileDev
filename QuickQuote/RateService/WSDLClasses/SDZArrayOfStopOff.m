/*
	SDZArrayOfStopOff.h
	The implementation of properties and methods for the SDZArrayOfStopOff array.
	Generated by SudzC.com
*/
#import "SDZArrayOfStopOff.h"

#import "SDZStopOff.h"
@implementation SDZArrayOfStopOff

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZStopOff* value = [[SDZStopOff createWithNode: child] object];
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
			[s appendString: [item serialize: @"StopOff"]];
		}
		return s;
	}
@end
