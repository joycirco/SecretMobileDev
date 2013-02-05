/*
	SDZRateResponsePrivileged.h
	The implementation of properties and methods for the SDZRateResponsePrivileged object.
	Generated by SudzC.com
*/
#import "SDZRateResponsePrivileged.h"

#import "SDZArrayOfPricingAccessorial.h"
#import "SDZPricingContractLevel.h"
#import "SDZPricingStrategyLevel.h"
#import "SDZPricingTransactionCharge.h"
#import "SDZPricingIncentive.h"
#import "SDZArrayOfArrayOfDecimal.h"
#import "SDZArrayOfCwtPricingDetails.h"
#import "SDZArrayOfFreightPricingDetails.h"
#import "SDZArrayOfRatedAccessorialPrivileged.h"
#import "SDZArrayOfSupplement.h"
#import "SDZArrayOfTerminalInfo.h"
#import "SDZBilling3rdParty.h"
@implementation SDZRateResponsePrivileged
	@synthesize resContractID = _resContractID;
	@synthesize resStrategyID = _resStrategyID;
	@synthesize resContractReference = _resContractReference;
	@synthesize resContractDescription = _resContractDescription;
	@synthesize resStrategyDescription = _resStrategyDescription;
	@synthesize resContractEffectiveDate = _resContractEffectiveDate;
	@synthesize resRateQualifier = _resRateQualifier;
	@synthesize resAccessorialPricingDetail = _resAccessorialPricingDetail;
	@synthesize resContractPricingDetail = _resContractPricingDetail;
	@synthesize resStrategyPricingDetail = _resStrategyPricingDetail;
	@synthesize resTransactionFeePricingDetail = _resTransactionFeePricingDetail;
	@synthesize resIncentivePricingDetail = _resIncentivePricingDetail;
	@synthesize resDeficitWeight = _resDeficitWeight;
	@synthesize resRateBlock = _resRateBlock;
	@synthesize resCwtBlock = _resCwtBlock;
	@synthesize resFreightPricingDetails = _resFreightPricingDetails;
	@synthesize resTransactionFee = _resTransactionFee;
	@synthesize resIncentiveAmount = _resIncentiveAmount;
	@synthesize resShipmentMarginAmount = _resShipmentMarginAmount;
	@synthesize resAccessorialMarginAmount = _resAccessorialMarginAmount;
	@synthesize resRateRequestCount = _resRateRequestCount;
	@synthesize resBOLToQuoteRatio = _resBOLToQuoteRatio;
	@synthesize resTariffDiscountPercent = _resTariffDiscountPercent;
	@synthesize resTariffDiscountAmount = _resTariffDiscountAmount;
	@synthesize resCustomerDiscountPercent = _resCustomerDiscountPercent;
	@synthesize resCustomerDiscountAmount = _resCustomerDiscountAmount;
	@synthesize resAccessorialTotalCost = _resAccessorialTotalCost;
	@synthesize resCarrierTotalCost = _resCarrierTotalCost;
	@synthesize resFuelTotalCost = _resFuelTotalCost;
	@synthesize resSubTotalCost = _resSubTotalCost;
	@synthesize resInsuranceCost = _resInsuranceCost;
	@synthesize resInsuranceCharge = _resInsuranceCharge;
	@synthesize resAccessorialTotalCharge = _resAccessorialTotalCharge;
	@synthesize resCarrierTotalCharge = _resCarrierTotalCharge;
	@synthesize resFuelTotalCharge = _resFuelTotalCharge;
	@synthesize resSubTotalCharge = _resSubTotalCharge;
	@synthesize resCarrierGrossTotal = _resCarrierGrossTotal;
	@synthesize resRateOk = _resRateOk;
	@synthesize resReqId = _resReqId;
	@synthesize resReqReference = _resReqReference;
	@synthesize resReqMsg = _resReqMsg;
	@synthesize resReqFlag = _resReqFlag;
	@synthesize resRatesNumber = _resRatesNumber;
	@synthesize resOriginName = _resOriginName;
	@synthesize resOriginAddr1 = _resOriginAddr1;
	@synthesize resOriginAddr2 = _resOriginAddr2;
	@synthesize resOriginCity = _resOriginCity;
	@synthesize resOriginState = _resOriginState;
	@synthesize resOriginZip = _resOriginZip;
	@synthesize resOriginCountry = _resOriginCountry;
	@synthesize resOriginWarehouseId = _resOriginWarehouseId;
	@synthesize resDestName = _resDestName;
	@synthesize resDestAddr1 = _resDestAddr1;
	@synthesize resDestAddr2 = _resDestAddr2;
	@synthesize resDestCity = _resDestCity;
	@synthesize resDestState = _resDestState;
	@synthesize resDestZip = _resDestZip;
	@synthesize resDestCountry = _resDestCountry;
	@synthesize resDestWarehouseId = _resDestWarehouseId;
	@synthesize resCarrierScac = _resCarrierScac;
	@synthesize resCarrierName = _resCarrierName;
	@synthesize resAuditedOk = _resAuditedOk;
	@synthesize resAuditAmount = _resAuditAmount;
	@synthesize resAuditDifference = _resAuditDifference;
	@synthesize resRateCurrencyCode = _resRateCurrencyCode;
	@synthesize resRateCurrency = _resRateCurrency;
	@synthesize resRatedAccessorials = _resRatedAccessorials;
	@synthesize resSupplementals = _resSupplementals;
	@synthesize resMode = _resMode;
	@synthesize resService = _resService;
	@synthesize resParcelServiceCode = _resParcelServiceCode;
	@synthesize resTransitDays = _resTransitDays;
	@synthesize resCalculatedMiles = _resCalculatedMiles;
	@synthesize resMileCalculationUsed = _resMileCalculationUsed;
	@synthesize resMiler = _resMiler;
	@synthesize resMilerDescription = _resMilerDescription;
	@synthesize resEstimatedDelivery = _resEstimatedDelivery;
	@synthesize resTerminals = _resTerminals;
	@synthesize resBilling3rdParty = _resBilling3rdParty;

	- (id) init
	{
		if(self = [super init])
		{
			self.resContractReference = nil;
			self.resContractDescription = nil;
			self.resStrategyDescription = nil;
			self.resContractEffectiveDate = nil;
			self.resRateQualifier = nil;
			self.resAccessorialPricingDetail = [[[NSMutableArray alloc] init] autorelease];
			self.resContractPricingDetail = nil; // [[SDZPricingContractLevel alloc] init];
			self.resStrategyPricingDetail = nil; // [[SDZPricingStrategyLevel alloc] init];
			self.resTransactionFeePricingDetail = nil; // [[SDZPricingTransactionCharge alloc] init];
			self.resIncentivePricingDetail = nil; // [[SDZPricingIncentive alloc] init];
			self.resDeficitWeight = nil;
			self.resRateBlock = [[[NSMutableArray alloc] init] autorelease];
			self.resCwtBlock = [[[NSMutableArray alloc] init] autorelease];
			self.resFreightPricingDetails = [[[NSMutableArray alloc] init] autorelease];
			self.resTransactionFee = nil;
			self.resIncentiveAmount = nil;
			self.resShipmentMarginAmount = nil;
			self.resAccessorialMarginAmount = nil;
			self.resBOLToQuoteRatio = nil;
			self.resTariffDiscountPercent = nil;
			self.resTariffDiscountAmount = nil;
			self.resCustomerDiscountPercent = nil;
			self.resCustomerDiscountAmount = nil;
			self.resAccessorialTotalCost = nil;
			self.resCarrierTotalCost = nil;
			self.resFuelTotalCost = nil;
			self.resSubTotalCost = nil;
			self.resInsuranceCost = nil;
			self.resInsuranceCharge = nil;
			self.resAccessorialTotalCharge = nil;
			self.resCarrierTotalCharge = nil;
			self.resFuelTotalCharge = nil;
			self.resSubTotalCharge = nil;
			self.resCarrierGrossTotal = nil;
			self.resReqReference = nil;
			self.resReqMsg = nil;
			self.resOriginName = nil;
			self.resOriginAddr1 = nil;
			self.resOriginAddr2 = nil;
			self.resOriginCity = nil;
			self.resOriginState = nil;
			self.resOriginZip = nil;
			self.resOriginCountry = nil;
			self.resDestName = nil;
			self.resDestAddr1 = nil;
			self.resDestAddr2 = nil;
			self.resDestCity = nil;
			self.resDestState = nil;
			self.resDestZip = nil;
			self.resDestCountry = nil;
			self.resCarrierScac = nil;
			self.resCarrierName = nil;
			self.resAuditAmount = nil;
			self.resAuditDifference = nil;
			self.resRateCurrencyCode = nil;
			self.resRateCurrency = nil;
			self.resRatedAccessorials = [[[NSMutableArray alloc] init] autorelease];
			self.resSupplementals = [[[NSMutableArray alloc] init] autorelease];
			self.resMode = nil;
			self.resService = nil;
			self.resParcelServiceCode = nil;
			self.resMileCalculationUsed = nil;
			self.resMilerDescription = nil;
			self.resEstimatedDelivery = nil;
			self.resTerminals = [[[NSMutableArray alloc] init] autorelease];
			self.resBilling3rdParty = nil; // [[SDZBilling3rdParty alloc] init];

		}
		return self;
	}

	+ (SDZRateResponsePrivileged*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[[self alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.resContractID = [[Soap getNodeValue: node withName: @"resContractID"] intValue];
			self.resStrategyID = [[Soap getNodeValue: node withName: @"resStrategyID"] intValue];
			self.resContractReference = [Soap getNodeValue: node withName: @"resContractReference"];
			self.resContractDescription = [Soap getNodeValue: node withName: @"resContractDescription"];
			self.resStrategyDescription = [Soap getNodeValue: node withName: @"resStrategyDescription"];
			self.resContractEffectiveDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"resContractEffectiveDate"]];
			self.resRateQualifier = [Soap getNodeValue: node withName: @"resRateQualifier"];
			self.resAccessorialPricingDetail = [[SDZArrayOfPricingAccessorial createWithNode: [Soap getNode: node withName: @"resAccessorialPricingDetail"]] object];
			self.resContractPricingDetail = [[SDZPricingContractLevel createWithNode: [Soap getNode: node withName: @"resContractPricingDetail"]] object];
			self.resStrategyPricingDetail = [[SDZPricingStrategyLevel createWithNode: [Soap getNode: node withName: @"resStrategyPricingDetail"]] object];
			self.resTransactionFeePricingDetail = [[SDZPricingTransactionCharge createWithNode: [Soap getNode: node withName: @"resTransactionFeePricingDetail"]] object];
			self.resIncentivePricingDetail = [[SDZPricingIncentive createWithNode: [Soap getNode: node withName: @"resIncentivePricingDetail"]] object];
			self.resDeficitWeight = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resDeficitWeight"]];
			self.resRateBlock = [[SDZArrayOfArrayOfDecimal createWithNode: [Soap getNode: node withName: @"resRateBlock"]] object];
			self.resCwtBlock = [[SDZArrayOfCwtPricingDetails createWithNode: [Soap getNode: node withName: @"resCwtBlock"]] object];
			self.resFreightPricingDetails = [[SDZArrayOfFreightPricingDetails createWithNode: [Soap getNode: node withName: @"resFreightPricingDetails"]] object];
			self.resTransactionFee = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resTransactionFee"]];
			self.resIncentiveAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resIncentiveAmount"]];
			self.resShipmentMarginAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resShipmentMarginAmount"]];
			self.resAccessorialMarginAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resAccessorialMarginAmount"]];
			self.resRateRequestCount = [[Soap getNodeValue: node withName: @"resRateRequestCount"] intValue];
			self.resBOLToQuoteRatio = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resBOLToQuoteRatio"]];
			self.resTariffDiscountPercent = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resTariffDiscountPercent"]];
			self.resTariffDiscountAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resTariffDiscountAmount"]];
			self.resCustomerDiscountPercent = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resCustomerDiscountPercent"]];
			self.resCustomerDiscountAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resCustomerDiscountAmount"]];
			self.resAccessorialTotalCost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resAccessorialTotalCost"]];
			self.resCarrierTotalCost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resCarrierTotalCost"]];
			self.resFuelTotalCost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resFuelTotalCost"]];
			self.resSubTotalCost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resSubTotalCost"]];
			self.resInsuranceCost = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resInsuranceCost"]];
			self.resInsuranceCharge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resInsuranceCharge"]];
			self.resAccessorialTotalCharge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resAccessorialTotalCharge"]];
			self.resCarrierTotalCharge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resCarrierTotalCharge"]];
			self.resFuelTotalCharge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resFuelTotalCharge"]];
			self.resSubTotalCharge = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resSubTotalCharge"]];
			self.resCarrierGrossTotal = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resCarrierGrossTotal"]];
			self.resRateOk = [[Soap getNodeValue: node withName: @"resRateOk"] boolValue];
			self.resReqId = [[Soap getNodeValue: node withName: @"resReqId"] intValue];
			self.resReqReference = [Soap getNodeValue: node withName: @"resReqReference"];
			self.resReqMsg = [Soap getNodeValue: node withName: @"resReqMsg"];
			self.resReqFlag = [[Soap getNodeValue: node withName: @"resReqFlag"] intValue];
			self.resRatesNumber = [[Soap getNodeValue: node withName: @"resRatesNumber"] intValue];
			self.resOriginName = [Soap getNodeValue: node withName: @"resOriginName"];
			self.resOriginAddr1 = [Soap getNodeValue: node withName: @"resOriginAddr1"];
			self.resOriginAddr2 = [Soap getNodeValue: node withName: @"resOriginAddr2"];
			self.resOriginCity = [Soap getNodeValue: node withName: @"resOriginCity"];
			self.resOriginState = [Soap getNodeValue: node withName: @"resOriginState"];
			self.resOriginZip = [Soap getNodeValue: node withName: @"resOriginZip"];
			self.resOriginCountry = [Soap getNodeValue: node withName: @"resOriginCountry"];
			self.resOriginWarehouseId = [[Soap getNodeValue: node withName: @"resOriginWarehouseId"] intValue];
			self.resDestName = [Soap getNodeValue: node withName: @"resDestName"];
			self.resDestAddr1 = [Soap getNodeValue: node withName: @"resDestAddr1"];
			self.resDestAddr2 = [Soap getNodeValue: node withName: @"resDestAddr2"];
			self.resDestCity = [Soap getNodeValue: node withName: @"resDestCity"];
			self.resDestState = [Soap getNodeValue: node withName: @"resDestState"];
			self.resDestZip = [Soap getNodeValue: node withName: @"resDestZip"];
			self.resDestCountry = [Soap getNodeValue: node withName: @"resDestCountry"];
			self.resDestWarehouseId = [[Soap getNodeValue: node withName: @"resDestWarehouseId"] intValue];
			self.resCarrierScac = [Soap getNodeValue: node withName: @"resCarrierScac"];
			self.resCarrierName = [Soap getNodeValue: node withName: @"resCarrierName"];
			self.resAuditedOk = [[Soap getNodeValue: node withName: @"resAuditedOk"] boolValue];
			self.resAuditAmount = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resAuditAmount"]];
			self.resAuditDifference = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"resAuditDifference"]];
			self.resRateCurrencyCode = [Soap getNodeValue: node withName: @"resRateCurrencyCode"];
			self.resRateCurrency = [Soap getNodeValue: node withName: @"resRateCurrency"];
			self.resRatedAccessorials = [[SDZArrayOfRatedAccessorialPrivileged createWithNode: [Soap getNode: node withName: @"resRatedAccessorials"]] object];
			self.resSupplementals = [[SDZArrayOfSupplement createWithNode: [Soap getNode: node withName: @"resSupplementals"]] object];
			self.resMode = [Soap getNodeValue: node withName: @"resMode"];
			self.resService = [Soap getNodeValue: node withName: @"resService"];
			self.resParcelServiceCode = [Soap getNodeValue: node withName: @"resParcelServiceCode"];
			self.resTransitDays = [[Soap getNodeValue: node withName: @"resTransitDays"] intValue];
			self.resCalculatedMiles = [[Soap getNodeValue: node withName: @"resCalculatedMiles"] intValue];
			self.resMileCalculationUsed = [Soap getNodeValue: node withName: @"resMileCalculationUsed"];
			self.resMiler = [[Soap getNodeValue: node withName: @"resMiler"] intValue];
			self.resMilerDescription = [Soap getNodeValue: node withName: @"resMilerDescription"];
			self.resEstimatedDelivery = [Soap dateFromString: [Soap getNodeValue: node withName: @"resEstimatedDelivery"]];
			self.resTerminals = [[SDZArrayOfTerminalInfo createWithNode: [Soap getNode: node withName: @"resTerminals"]] object];
			self.resBilling3rdParty = [[SDZBilling3rdParty createWithNode: [Soap getNode: node withName: @"resBilling3rdParty"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"RateResponsePrivileged"];
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
		[s appendFormat: @"<resContractID>%@</resContractID>", [NSString stringWithFormat: @"%i", self.resContractID]];
		[s appendFormat: @"<resStrategyID>%@</resStrategyID>", [NSString stringWithFormat: @"%i", self.resStrategyID]];
		if (self.resContractReference != nil) [s appendFormat: @"<resContractReference>%@</resContractReference>", [[self.resContractReference stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resContractDescription != nil) [s appendFormat: @"<resContractDescription>%@</resContractDescription>", [[self.resContractDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resStrategyDescription != nil) [s appendFormat: @"<resStrategyDescription>%@</resStrategyDescription>", [[self.resStrategyDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resContractEffectiveDate != nil) [s appendFormat: @"<resContractEffectiveDate>%@</resContractEffectiveDate>", [Soap getDateString: self.resContractEffectiveDate]];
		if (self.resRateQualifier != nil) [s appendFormat: @"<resRateQualifier>%@</resRateQualifier>", [[self.resRateQualifier stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resAccessorialPricingDetail != nil && self.resAccessorialPricingDetail.count > 0) {
			[s appendFormat: @"<resAccessorialPricingDetail>%@</resAccessorialPricingDetail>", [SDZArrayOfPricingAccessorial serialize: self.resAccessorialPricingDetail]];
		} else {
			[s appendString: @"<resAccessorialPricingDetail/>"];
		}
		if (self.resContractPricingDetail != nil) [s appendString: [self.resContractPricingDetail serialize: @"resContractPricingDetail"]];
		if (self.resStrategyPricingDetail != nil) [s appendString: [self.resStrategyPricingDetail serialize: @"resStrategyPricingDetail"]];
		if (self.resTransactionFeePricingDetail != nil) [s appendString: [self.resTransactionFeePricingDetail serialize: @"resTransactionFeePricingDetail"]];
		if (self.resIncentivePricingDetail != nil) [s appendString: [self.resIncentivePricingDetail serialize: @"resIncentivePricingDetail"]];
		if (self.resDeficitWeight != nil) [s appendFormat: @"<resDeficitWeight>%@</resDeficitWeight>", [NSString stringWithFormat: @"%@", self.resDeficitWeight]];
		if (self.resRateBlock != nil && self.resRateBlock.count > 0) {
			[s appendFormat: @"<resRateBlock>%@</resRateBlock>", [SDZArrayOfArrayOfDecimal serialize: self.resRateBlock]];
		} else {
			[s appendString: @"<resRateBlock/>"];
		}
		if (self.resCwtBlock != nil && self.resCwtBlock.count > 0) {
			[s appendFormat: @"<resCwtBlock>%@</resCwtBlock>", [SDZArrayOfCwtPricingDetails serialize: self.resCwtBlock]];
		} else {
			[s appendString: @"<resCwtBlock/>"];
		}
		if (self.resFreightPricingDetails != nil && self.resFreightPricingDetails.count > 0) {
			[s appendFormat: @"<resFreightPricingDetails>%@</resFreightPricingDetails>", [SDZArrayOfFreightPricingDetails serialize: self.resFreightPricingDetails]];
		} else {
			[s appendString: @"<resFreightPricingDetails/>"];
		}
		if (self.resTransactionFee != nil) [s appendFormat: @"<resTransactionFee>%@</resTransactionFee>", [NSString stringWithFormat: @"%@", self.resTransactionFee]];
		if (self.resIncentiveAmount != nil) [s appendFormat: @"<resIncentiveAmount>%@</resIncentiveAmount>", [NSString stringWithFormat: @"%@", self.resIncentiveAmount]];
		if (self.resShipmentMarginAmount != nil) [s appendFormat: @"<resShipmentMarginAmount>%@</resShipmentMarginAmount>", [NSString stringWithFormat: @"%@", self.resShipmentMarginAmount]];
		if (self.resAccessorialMarginAmount != nil) [s appendFormat: @"<resAccessorialMarginAmount>%@</resAccessorialMarginAmount>", [NSString stringWithFormat: @"%@", self.resAccessorialMarginAmount]];
		[s appendFormat: @"<resRateRequestCount>%@</resRateRequestCount>", [NSString stringWithFormat: @"%i", self.resRateRequestCount]];
		if (self.resBOLToQuoteRatio != nil) [s appendFormat: @"<resBOLToQuoteRatio>%@</resBOLToQuoteRatio>", [NSString stringWithFormat: @"%@", self.resBOLToQuoteRatio]];
		if (self.resTariffDiscountPercent != nil) [s appendFormat: @"<resTariffDiscountPercent>%@</resTariffDiscountPercent>", [NSString stringWithFormat: @"%@", self.resTariffDiscountPercent]];
		if (self.resTariffDiscountAmount != nil) [s appendFormat: @"<resTariffDiscountAmount>%@</resTariffDiscountAmount>", [NSString stringWithFormat: @"%@", self.resTariffDiscountAmount]];
		if (self.resCustomerDiscountPercent != nil) [s appendFormat: @"<resCustomerDiscountPercent>%@</resCustomerDiscountPercent>", [NSString stringWithFormat: @"%@", self.resCustomerDiscountPercent]];
		if (self.resCustomerDiscountAmount != nil) [s appendFormat: @"<resCustomerDiscountAmount>%@</resCustomerDiscountAmount>", [NSString stringWithFormat: @"%@", self.resCustomerDiscountAmount]];
		if (self.resAccessorialTotalCost != nil) [s appendFormat: @"<resAccessorialTotalCost>%@</resAccessorialTotalCost>", [NSString stringWithFormat: @"%@", self.resAccessorialTotalCost]];
		if (self.resCarrierTotalCost != nil) [s appendFormat: @"<resCarrierTotalCost>%@</resCarrierTotalCost>", [NSString stringWithFormat: @"%@", self.resCarrierTotalCost]];
		if (self.resFuelTotalCost != nil) [s appendFormat: @"<resFuelTotalCost>%@</resFuelTotalCost>", [NSString stringWithFormat: @"%@", self.resFuelTotalCost]];
		if (self.resSubTotalCost != nil) [s appendFormat: @"<resSubTotalCost>%@</resSubTotalCost>", [NSString stringWithFormat: @"%@", self.resSubTotalCost]];
		if (self.resInsuranceCost != nil) [s appendFormat: @"<resInsuranceCost>%@</resInsuranceCost>", [NSString stringWithFormat: @"%@", self.resInsuranceCost]];
		if (self.resInsuranceCharge != nil) [s appendFormat: @"<resInsuranceCharge>%@</resInsuranceCharge>", [NSString stringWithFormat: @"%@", self.resInsuranceCharge]];
		if (self.resAccessorialTotalCharge != nil) [s appendFormat: @"<resAccessorialTotalCharge>%@</resAccessorialTotalCharge>", [NSString stringWithFormat: @"%@", self.resAccessorialTotalCharge]];
		if (self.resCarrierTotalCharge != nil) [s appendFormat: @"<resCarrierTotalCharge>%@</resCarrierTotalCharge>", [NSString stringWithFormat: @"%@", self.resCarrierTotalCharge]];
		if (self.resFuelTotalCharge != nil) [s appendFormat: @"<resFuelTotalCharge>%@</resFuelTotalCharge>", [NSString stringWithFormat: @"%@", self.resFuelTotalCharge]];
		if (self.resSubTotalCharge != nil) [s appendFormat: @"<resSubTotalCharge>%@</resSubTotalCharge>", [NSString stringWithFormat: @"%@", self.resSubTotalCharge]];
		if (self.resCarrierGrossTotal != nil) [s appendFormat: @"<resCarrierGrossTotal>%@</resCarrierGrossTotal>", [NSString stringWithFormat: @"%@", self.resCarrierGrossTotal]];
		[s appendFormat: @"<resRateOk>%@</resRateOk>", (self.resRateOk)?@"true":@"false"];
		[s appendFormat: @"<resReqId>%@</resReqId>", [NSString stringWithFormat: @"%i", self.resReqId]];
		if (self.resReqReference != nil) [s appendFormat: @"<resReqReference>%@</resReqReference>", [[self.resReqReference stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resReqMsg != nil) [s appendFormat: @"<resReqMsg>%@</resReqMsg>", [[self.resReqMsg stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resReqFlag>%@</resReqFlag>", [NSString stringWithFormat: @"%i", self.resReqFlag]];
		[s appendFormat: @"<resRatesNumber>%@</resRatesNumber>", [NSString stringWithFormat: @"%i", self.resRatesNumber]];
		if (self.resOriginName != nil) [s appendFormat: @"<resOriginName>%@</resOriginName>", [[self.resOriginName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginAddr1 != nil) [s appendFormat: @"<resOriginAddr1>%@</resOriginAddr1>", [[self.resOriginAddr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginAddr2 != nil) [s appendFormat: @"<resOriginAddr2>%@</resOriginAddr2>", [[self.resOriginAddr2 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginCity != nil) [s appendFormat: @"<resOriginCity>%@</resOriginCity>", [[self.resOriginCity stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginState != nil) [s appendFormat: @"<resOriginState>%@</resOriginState>", [[self.resOriginState stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginZip != nil) [s appendFormat: @"<resOriginZip>%@</resOriginZip>", [[self.resOriginZip stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resOriginCountry != nil) [s appendFormat: @"<resOriginCountry>%@</resOriginCountry>", [[self.resOriginCountry stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resOriginWarehouseId>%@</resOriginWarehouseId>", [NSString stringWithFormat: @"%i", self.resOriginWarehouseId]];
		if (self.resDestName != nil) [s appendFormat: @"<resDestName>%@</resDestName>", [[self.resDestName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestAddr1 != nil) [s appendFormat: @"<resDestAddr1>%@</resDestAddr1>", [[self.resDestAddr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestAddr2 != nil) [s appendFormat: @"<resDestAddr2>%@</resDestAddr2>", [[self.resDestAddr2 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestCity != nil) [s appendFormat: @"<resDestCity>%@</resDestCity>", [[self.resDestCity stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestState != nil) [s appendFormat: @"<resDestState>%@</resDestState>", [[self.resDestState stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestZip != nil) [s appendFormat: @"<resDestZip>%@</resDestZip>", [[self.resDestZip stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resDestCountry != nil) [s appendFormat: @"<resDestCountry>%@</resDestCountry>", [[self.resDestCountry stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resDestWarehouseId>%@</resDestWarehouseId>", [NSString stringWithFormat: @"%i", self.resDestWarehouseId]];
		if (self.resCarrierScac != nil) [s appendFormat: @"<resCarrierScac>%@</resCarrierScac>", [[self.resCarrierScac stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resCarrierName != nil) [s appendFormat: @"<resCarrierName>%@</resCarrierName>", [[self.resCarrierName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resAuditedOk>%@</resAuditedOk>", (self.resAuditedOk)?@"true":@"false"];
		if (self.resAuditAmount != nil) [s appendFormat: @"<resAuditAmount>%@</resAuditAmount>", [NSString stringWithFormat: @"%@", self.resAuditAmount]];
		if (self.resAuditDifference != nil) [s appendFormat: @"<resAuditDifference>%@</resAuditDifference>", [NSString stringWithFormat: @"%@", self.resAuditDifference]];
		if (self.resRateCurrencyCode != nil) [s appendFormat: @"<resRateCurrencyCode>%@</resRateCurrencyCode>", [[self.resRateCurrencyCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resRateCurrency != nil) [s appendFormat: @"<resRateCurrency>%@</resRateCurrency>", [[self.resRateCurrency stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resRatedAccessorials != nil && self.resRatedAccessorials.count > 0) {
			[s appendFormat: @"<resRatedAccessorials>%@</resRatedAccessorials>", [SDZArrayOfRatedAccessorialPrivileged serialize: self.resRatedAccessorials]];
		} else {
			[s appendString: @"<resRatedAccessorials/>"];
		}
		if (self.resSupplementals != nil && self.resSupplementals.count > 0) {
			[s appendFormat: @"<resSupplementals>%@</resSupplementals>", [SDZArrayOfSupplement serialize: self.resSupplementals]];
		} else {
			[s appendString: @"<resSupplementals/>"];
		}
		if (self.resMode != nil) [s appendFormat: @"<resMode>%@</resMode>", [[self.resMode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resService != nil) [s appendFormat: @"<resService>%@</resService>", [[self.resService stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resParcelServiceCode != nil) [s appendFormat: @"<resParcelServiceCode>%@</resParcelServiceCode>", [[self.resParcelServiceCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resTransitDays>%@</resTransitDays>", [NSString stringWithFormat: @"%i", self.resTransitDays]];
		[s appendFormat: @"<resCalculatedMiles>%@</resCalculatedMiles>", [NSString stringWithFormat: @"%i", self.resCalculatedMiles]];
		if (self.resMileCalculationUsed != nil) [s appendFormat: @"<resMileCalculationUsed>%@</resMileCalculationUsed>", [[self.resMileCalculationUsed stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<resMiler>%@</resMiler>", [NSString stringWithFormat: @"%i", self.resMiler]];
		if (self.resMilerDescription != nil) [s appendFormat: @"<resMilerDescription>%@</resMilerDescription>", [[self.resMilerDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.resEstimatedDelivery != nil) [s appendFormat: @"<resEstimatedDelivery>%@</resEstimatedDelivery>", [Soap getDateString: self.resEstimatedDelivery]];
		if (self.resTerminals != nil && self.resTerminals.count > 0) {
			[s appendFormat: @"<resTerminals>%@</resTerminals>", [SDZArrayOfTerminalInfo serialize: self.resTerminals]];
		} else {
			[s appendString: @"<resTerminals/>"];
		}
		if (self.resBilling3rdParty != nil) [s appendString: [self.resBilling3rdParty serialize: @"resBilling3rdParty"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZRateResponsePrivileged class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.resContractReference = nil;
		self.resContractDescription = nil;
		self.resStrategyDescription = nil;
		self.resContractEffectiveDate = nil;
		self.resRateQualifier = nil;
		self.resAccessorialPricingDetail = nil;
		self.resContractPricingDetail = nil;
		self.resStrategyPricingDetail = nil;
		self.resTransactionFeePricingDetail = nil;
		self.resIncentivePricingDetail = nil;
		self.resDeficitWeight = nil;
		self.resRateBlock = nil;
		self.resCwtBlock = nil;
		self.resFreightPricingDetails = nil;
		self.resTransactionFee = nil;
		self.resIncentiveAmount = nil;
		self.resShipmentMarginAmount = nil;
		self.resAccessorialMarginAmount = nil;
		self.resBOLToQuoteRatio = nil;
		self.resTariffDiscountPercent = nil;
		self.resTariffDiscountAmount = nil;
		self.resCustomerDiscountPercent = nil;
		self.resCustomerDiscountAmount = nil;
		self.resAccessorialTotalCost = nil;
		self.resCarrierTotalCost = nil;
		self.resFuelTotalCost = nil;
		self.resSubTotalCost = nil;
		self.resInsuranceCost = nil;
		self.resInsuranceCharge = nil;
		self.resAccessorialTotalCharge = nil;
		self.resCarrierTotalCharge = nil;
		self.resFuelTotalCharge = nil;
		self.resSubTotalCharge = nil;
		self.resCarrierGrossTotal = nil;
		self.resReqReference = nil;
		self.resReqMsg = nil;
		self.resOriginName = nil;
		self.resOriginAddr1 = nil;
		self.resOriginAddr2 = nil;
		self.resOriginCity = nil;
		self.resOriginState = nil;
		self.resOriginZip = nil;
		self.resOriginCountry = nil;
		self.resDestName = nil;
		self.resDestAddr1 = nil;
		self.resDestAddr2 = nil;
		self.resDestCity = nil;
		self.resDestState = nil;
		self.resDestZip = nil;
		self.resDestCountry = nil;
		self.resCarrierScac = nil;
		self.resCarrierName = nil;
		self.resAuditAmount = nil;
		self.resAuditDifference = nil;
		self.resRateCurrencyCode = nil;
		self.resRateCurrency = nil;
		self.resRatedAccessorials = nil;
		self.resSupplementals = nil;
		self.resMode = nil;
		self.resService = nil;
		self.resParcelServiceCode = nil;
		self.resMileCalculationUsed = nil;
		self.resMilerDescription = nil;
		self.resEstimatedDelivery = nil;
		self.resTerminals = nil;
		self.resBilling3rdParty = nil;
		[super dealloc];
	}

@end