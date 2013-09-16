//
//
// UIWebView app
//
//

#import "LaunchSafariAppDelegate.h"
#import "LaunchSafariViewController.h"
//
//
// Sample app to demonstrate the Appurify debugger
//
// manish@appurify.com
//
//

//
// Include Appurify Debugger header
//
#import "Appurify_Debugger.h"

@implementation LaunchSafariAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
        
    //
    // Load the Appurify Debugger
    //
    [AppurifyDebugger load];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

- (void)dealloc {
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
