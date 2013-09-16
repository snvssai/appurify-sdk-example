//
// Appurify Debugger
//
// manish@appurify.com
//

@interface AppurifyDebugger : NSObject <UIActionSheetDelegate>
{
    UIActionSheet *actionSheet;
    UIAlertView *alertView;
    SEL handler;
}

+ (AppurifyDebugger *)sharedDebugger;
- (void)toggleActivation;
+ (void)load;
@end

AppurifyDebugger *sharedDebugger;