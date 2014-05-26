YouTube API v3.0 parser for iOS
===============================

A simple Objective-C wrapper for most of YouTube API v3.0 functions (including OAuth2.0 implementation).
Designed to make it simple to integrate YouTube functionality within your iOS app.

## Install
Just drag "YTAPI3" directory to your Xcode project.

Add the below to your ".pch" file

```
#define IsPad      (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPhone)

#define UIColorFromRGBA(rgbValue, alphaValue) [UIColor colorWithRed:((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0 green:((CGFloat)((rgbValue & 0xFF00) >> 8))/255.0 blue:((CGFloat)(rgbValue & 0xFF))/255.0 alpha:alphaValue]

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


static NSString *kMyClientID = @"YourClientID";
static NSString *kMyClientSecret = @"YourClientSecret";
static NSString *scope = @"https://www.googleapis.com/auth/youtube https://www.googleapis.com/auth/youtube.readonly https://www.googleapis.com/auth/youtubepartner https://www.googleapis.com/auth/youtubepartner-channel-audit https://www.googleapis.com/auth/youtube.upload";
static NSString *apiKey = @"YourAPIKey";

```

