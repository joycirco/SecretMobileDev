/*
	SDZFreightPricingDetails.h
	The implementation of properties and methods for the SDZFreightPricingDetails object.
	Generated by SudzC.com
*/
#import "SDZFreightPricingDetails.h"

@implementation SDZFreightPricingDetails
	@synthesize description = _description;
	@synthesize length = _length;
	@synthesize width = _width;
	@synthesize height = _height;
	@synthesize freightClass = _freightClass;
	@synthesize weight = _weight;
	@synthesize ratedWeight = _ratedWeight;
	@synthesize volume = _volume;
	@synthesize units = _units;
	@synthesize cost = _cost;
	@synthesize charge = _charge;
	@synthesize costRate = _costRate;
	@synthesize chargeRate = _chargeRate;

	- (id) init
	{
		if(self = [super init])
		{
			self.description = nil;
			self.length = nil;
			self.width = nil;
			self.height = nil;
			self.freightClass = nil;
			self.weight = nil;
			self.ratedWeight = nil;
			self.volume = nil;
			self.cost = nil;
			self.charge = nil;
			self.costRate = nil;
			self.chargeRate = nil;

		}
		return self;
	}

	+ (SDZFreightPricingDetails*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.description = [Soap getNodeValue: node withName: @"description"];
			self.length = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"length"]];
			self.width = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"width"]];
			self.height = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"height"]];
			self.freightClass = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"freightClass"]];
			self.weight = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"weight"]];
			self.ratedWeight = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"ratedWeight"]];
			self.volume = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"volume"]];
			self.units = [[Soap getNodeValue: node withName: @"units"] intValue];
			self.cost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"cost"]];
			self.charge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"charge"]];
			self.costRate = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"costRate"]];
			self.chargeRate = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"chargeRate"]];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"FreightPricingDetails"];
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
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.length != nil) [s appendFormat: @"<length>%@</length>", [NSString stringWithFormat: @"%@", self.length]];
		if (self.width != nil) [s appendFormat: @"<width>%@</width>", [NSString stringWithFormat: @"%@", self.width]];
		if (self.height != nil) [s appendFormat: @"<height>%@</height>", [NSString stringWithFormat: @"%@", self.height]];
		if (self.freightClass != nil) [s appendFormat: @"<freightClass>%@</freightClass>", [NSString stringWithFormat: @"%@", self.freightClass]];
		if (self.weight != nil) [s appendFormat: @"<weight>%@</weight>", [NSString stringWithFormat: @"%@", self.weight]];
		if (self.ratedWeight != nil) [s appendFormat: @"<ratedWeight>%@</ratedWeight>", [NSString stringWithFormat: @"%@", self.ratedWeight]];
		if (self.volume != nil) [s appendFormat: @"<volume>%@</volume>", [NSString stringWithFormat: @"%@", self.volume]];
		[s appendFormat: @"<units>%@</units>", [NSString stringWithFormat: @"%i", self.units]];
		if (self.cost != nil) [s appendFormat: @"<cost>%@</cost>", [NSString stringWithFormat: @"%@", self.cost]];
		if (self.charge != nil) [s appendFormat: @"<charge>%@</charge>", [NSString stringWithFormat: @"%@", self.charge]];
		if (self.costRate != nil) [s appendFormat: @"<costRate>%@</costRate>", [NSString stringWithFormat: @"%@", self.costRate]];
		if (self.chargeRate != nil) [s appendFormat: @"<chargeRate>%@</chargeRate>", [NSString stringWithFormat: @"%@", self.chargeRate]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZFreightPricingDetails class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.description = nil;
		self.length = nil;
		self.width = nil;
		self.height = nil;
		self.freightClass = nil;
		self.weight = nil;
		self.ratedWeight = nil;
		self.volume = nil;
		self.cost = nil;
		self.charge = nil;
		self.costRate = nil;
		self.chargeRate = nil;
		[super dealloc];
	}

@end
