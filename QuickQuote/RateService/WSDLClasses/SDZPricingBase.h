/*
	SDZPricingBase.h
	The interface definition of properties and methods for the SDZPricingBase object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZEffectivePricing;

@interface SDZPricingBase : SoapObject
{
	int _cust_id;
	int _contract_id;
	BOOL _active;
	BOOL _benchmark;
	BOOL _analysis;
	NSDecimalNumber* _standard_markup_percent;
	NSDecimalNumber* _standard_markup_dollar;
	NSDecimalNumber* _flat_markup_percent;
	NSDecimalNumber* _flat_markup_dollar;
	NSDecimalNumber* _min_markup_percent;
	NSDecimalNumber* _min_markup_dollar;
	NSDecimalNumber* _max_markup_percent;
	NSDecimalNumber* _max_markup_dollar;
	BOOL _standard_markup_percent_applies;
	BOOL _flat_markup_percent_applies;
	BOOL _min_markup_percent_applies;
	BOOL _max_markup_percent_applies;
	BOOL _contract_pricing_applies;
	BOOL _min_markup_limit_enabled;
	BOOL _max_markup_limit_enabled;
	int _org_id;
	NSString* _scac;
	NSDecimalNumber* _min_margin;
	NSDecimalNumber* _max_margin;
	NSDecimalNumber* _weight_break_low;
	NSDecimalNumber* _weight_break_high;
	SDZEffectivePricing* _effectivePricing;
	
}
		
	@property int cust_id;
	@property int contract_id;
	@property BOOL active;
	@property BOOL benchmark;
	@property BOOL analysis;
	@property (retain, nonatomic) NSDecimalNumber* standard_markup_percent;
	@property (retain, nonatomic) NSDecimalNumber* standard_markup_dollar;
	@property (retain, nonatomic) NSDecimalNumber* flat_markup_percent;
	@property (retain, nonatomic) NSDecimalNumber* flat_markup_dollar;
	@property (retain, nonatomic) NSDecimalNumber* min_markup_percent;
	@property (retain, nonatomic) NSDecimalNumber* min_markup_dollar;
	@property (retain, nonatomic) NSDecimalNumber* max_markup_percent;
	@property (retain, nonatomic) NSDecimalNumber* max_markup_dollar;
	@property BOOL standard_markup_percent_applies;
	@property BOOL flat_markup_percent_applies;
	@property BOOL min_markup_percent_applies;
	@property BOOL max_markup_percent_applies;
	@property BOOL contract_pricing_applies;
	@property BOOL min_markup_limit_enabled;
	@property BOOL max_markup_limit_enabled;
	@property int org_id;
	@property (retain, nonatomic) NSString* scac;
	@property (retain, nonatomic) NSDecimalNumber* min_margin;
	@property (retain, nonatomic) NSDecimalNumber* max_margin;
	@property (retain, nonatomic) NSDecimalNumber* weight_break_low;
	@property (retain, nonatomic) NSDecimalNumber* weight_break_high;
	@property (retain, nonatomic) SDZEffectivePricing* effectivePricing;

	+ (SDZPricingBase*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
