# Appurify SDK Example

The Appurify SDK allows developers to record test automation scripts simply by interacting with their application.  These scripts can then be uploaded to Appurify’s testing platform, and even converted into UI Automation test cases that can be extended and updated.

Note that this SDK is designed for use on real devices only.


## Installation

1) Link the Appurify SDK static library and the IOSurface framework into your Target.  We recommend creating a separate Target to avoid unnecessarily linking the SDK into your production build.

![Xcode Integration](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot9.png?login=krohling&token=ae3ef884484371b6746a7df7d54d97e8)

2) Add the top of your UIApplicationDelegate add the following:

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

![Start Event Recorder](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot2.png?login=krohling&token=c1c2d2a62c1b0a229883895a0923329c)

At this point, all UI interactions will be recorded by the SDK.  When you are done recording your test case simply shake the device again and tap the Stop Event Recorder button.


### Retrieving A Test Case Off Of The Device

1) To retrieve your test case, you must be on the same wi-fi network as the device.  Start by shaking the device to bring up the UI, and tap the Start HTTP Server button.

![Start HTTP Server](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot3.png?login=krohling&token=62b3f4f279956a78fa26b3afb41f4b4d)


2) Next, you’ll need to get the IP Address of the device.  To do this use the IP Address option on the Appurify SDK.

![IP Address](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot4.png?login=krohling&token=ca72424f311f99e0c962e475763e4863)

![IP Address](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot7.png?login=krohling&token=ea60c6273f675c8e00f5139082ed2637)


3) Now that you have the IP Address, just plug it into a browser with port # 8080.  This will display the contents of the web server running on the device.

![Web Server](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot5.png?login=krohling&token=bbe1bdffbf6a7bc91abb4aafec6e67bd)


4) Inside the Tests directory you’ll find all of your test recordings, which you can download by clicking on them.

![Web Server Tests](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot6.png?login=krohling&token=c00eb19d80a1f442db9d06720183ef0f)

5) Finally, when uploading your test to the Appurify platform, simply select Appurify Recording for the Test Type.

![Script Upload](https://raw.github.com/appurify/appurify-sdk-example/master/screenshots/screenshot8.png?login=krohling&token=63be57ed81349fdd5bf703f3c69cdb29)

