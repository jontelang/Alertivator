#include "activatorheaders/libactivator.h"

@interface Alertivator : NSObject <LAListener>
@end

@implementation Alertivator

- (void)activator:(LAActivator *)activator 
	 receiveEvent:(LAEvent *)event 
  forListenerName:(NSString *)listenerName{
        [[[UIAlertView alloc] initWithTitle:@"Alertivator" 
        	message:@"Hey!" 
        	delegate:nil 
        	cancelButtonTitle:@"OK" 
        	otherButtonTitles:nil] show];
}

@end

static Alertivator *alertivatorInstance;

%ctor{
	alertivatorInstance = [[Alertivator alloc] init];
	[[LAActivator sharedInstance] registerListener:alertivatorInstance 
	                                       forName:@"alertivator"];
}