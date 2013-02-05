/*
	SDZSudzc.h
	Creates a list of the services available with the SDZ prefix.
	Generated by SudzC.com
*/
#import "SDZRateServicePrivileged.h"

@interface SDZSudzC : NSObject {
	BOOL logging;
	NSString* server;
	NSString* defaultServer;
SDZRateServicePrivileged* rateServicePrivileged;

}

-(id)initWithServer:(NSString*)serverName;
-(void)updateService:(SoapService*)service;
-(void)updateServices;
+(SDZSudzC*)sudzc;
+(SDZSudzC*)sudzcWithServer:(NSString*)serverName;

@property (nonatomic) BOOL logging;
@property (nonatomic, retain) NSString* server;
@property (nonatomic, retain) NSString* defaultServer;

@property (nonatomic, retain, readonly) SDZRateServicePrivileged* rateServicePrivileged;

@end
			