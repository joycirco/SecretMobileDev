/*
	SDZPricingContractLevel.h
	The implementation of properties and methods for the SDZPricingContractLevel object.
	Generated by SudzC.com
*/
#import "SDZPricingContractLevel.h"

@implementation SDZPricingContractLevel
	@synthesize pricing_contract_pk = _pricing_contract_pk;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZPricingContractLevel*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.pricing_contract_pk = [[Soap getNodeValue: node withName: @"pricing_contract_pk"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"PricingContractLevel"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<pricing_contract_pk>%@</pricing_contract_pk>", [NSString stringWithFormat: @"%i", self.pricing_contract_pk]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZPricingContractLevel class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end
