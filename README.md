# Appurify SDK
<a href="http://bit.ly/1bCd3zd"><img src='https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/sdk.png'/></a>

The Appurify SDK allows developers to record test automation scripts simply by interacting with their application.  These scripts can then be uploaded to Appurify’s testing platform, and even converted into UI Automation test cases that can be extended and updated.

**Note: The Appurify SDK is designed for use on real devices only and will not compile for the Simulator SDK.**


## Installation

1) Link the Appurify SDK static library and the IOSurface framework into your Target.  We recommend creating a separate Target to avoid unnecessarily linking the SDK into your production build.

![Xcode Integration](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot9.png)

2) At the top of your UIApplicationDelegate add the following:

```
#import "Appurify_Debugger.h"
```

3) Inside the didFinishLaunchingWithOptions method add

```
[AppurifyDebugger load];
```

4) Finally, add the following to your UIViewController.  This will trigger the SDK UI when the user shakes the device.

```
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake)
    {
        [[AppurifyDebugger sharedDebugger] toggleActivation];

    }
}
```


## Using The SDK

### Recording A Test Case

To record a test case, start by shaking the device to launch the SDK’s UI.  Then tap the Start Event Recorder button.

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot2.png)

At this point, all UI interactions will be recorded by the SDK.  When you are done recording your test case simply shake the device again and tap the Stop Event Recorder button.


### Retrieving A Test Case Off Of The Device

1) To retrieve your test case, you must be on the same wi-fi network as the device.  Start by shaking the device to bring up the UI, and tap the Start HTTP Server button.

![Start HTTP Server](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot3.png)


2) Next, you’ll need to get the IP Address of the device.  To do this use the IP Address option on the Appurify SDK.

![IP Address](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot4.png)

![IP Address](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot7.png)


3) Now that you have the IP Address, just plug it into a browser with port # 8080.  This will display the contents of the web server running on the device.

![Web Server](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot5.png)


4) Inside the Tests directory you’ll find all of your test recordings, which you can download by clicking on them.

![Web Server Tests](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot6.png)

5) Finally, when uploading your test to the Appurify platform, simply select Appurify Recording for the Test Type.

![Script Upload](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot8.png?login=krohling&token=63be57ed81349fdd5bf703f3c69cdb29)


### HTML 5 Debugging

1)	On your mobile device under Settings\Safari\Advanced make sure “Web Inspector” is turned on.

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot10.png)

2)	On your desktop open Safari.  Then, under Preferences\Advanced, make sure “Show Develop menu in menu bar” is enabled.

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot11.png)

3)	With your app running, plug your device into your desktop.

4)	On your desktop, under the Safari \ Develop menu select your application from the list.

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot12.png)

5)	Now, you can analyze your Webview and see detailed network output just like the app were running on your desktop machine!

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot13.png)

