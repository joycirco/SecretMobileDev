/*
	RSPArrayOfPalletPositions.h
	The implementation of properties and methods for the RSPArrayOfPalletPositions array.
	Generated by SudzC.com
*/
#import "RSPArrayOfPalletPositions.h"

#import "RSPPalletPositions.h"
@implementation RSPArrayOfPalletPositions

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				RSPPalletPositions* value = [[RSPPalletPositions createWithNode: child] object];
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
			[s appendString: [item serialize: @"PalletPositions"]];
		}
		return s;
	}
@end
