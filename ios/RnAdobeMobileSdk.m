#import <Foundation/Foundation.h>
#import "RnAdobeMobileSdk.h"
#import "ADBMobile.h"

// import RCTBridge
#if __has_include(<React/RCTBridge.h>)
#import <React/RCTBridge.h>
#elif __has_include("RCTBridge.h")
#import "RCTBridge.h"
#else
#import "React/RCTBridge.h" // Required when used as a Pod in a Swift project
#endif

// import RCTEventDispatcher
#if __has_include(<React/RCTEventDispatcher.h>)
#import <React/RCTEventDispatcher.h>
#elif __has_include("RCTEventDispatcher.h")
#import "RCTEventDispatcher.h"
#else
#import "React/RCTEventDispatcher.h" // Required when used as a Pod in a Swift project
#endif

@implementation RnAdobeMobileSdk

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init: (NSDictionary *)options)
{
    NSString *config = [[NSBundle mainBundle] pathForResource:@"ADBMobileConfig" ofType:@"json"];
    
    [ADBMobile collectLifecycleData];
    [ADBMobile overrideConfigPath:config];
    
    BOOL debug = options[@"debug"];
    
    if (debug) {
        [ADBMobile setDebugLogging:debug];
    }
}

RCT_EXPORT_METHOD(trackAction: (NSString *)action contextData:(NSDictionary *)contextData) {
    [ADBMobile trackAction:action data:contextData];
}

RCT_EXPORT_METHOD(trackState: (NSString *)state contextData:(NSDictionary *)contextData) {
    [ADBMobile trackState:state data:contextData];
}

RCT_EXPORT_METHOD(collectPii: (NSDictionary *)data) {
    [ADBMobile collectPII:data];
}

RCT_EXPORT_METHOD(visitorMarketingCloudID:(RCTResponseSenderBlock)callback) {
    NSString *mid = [ADBMobile visitorMarketingCloudID];
    printf("%s", mid);
    callback(@[[NSNull null], mid]);
}

@end