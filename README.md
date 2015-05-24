YouTubeAPI3-Objective-C-wrapper
===============================

A simple Objective-C wrapper for most of YouTube API v3.0 functions (including OAuth2.0 implementation).
Designed to make it simple to integrate YouTube functionality within your iOS app.



## Install
- Drag "YTAPI3" directory to your Xcode project.
- Update the below parameters with yours in "YTAPI3/OAuthFrameWork/MAB_GoogleUserCredentials.h" file

```
static NSString *kMyClientID = @"YourClientID";
static NSString *kMyClientSecret = @"YourClientSecret";
static NSString *apiKey = @"YourAPIKey";

```

## Enviroment
This library is ARC enabled, and requires Xcode 5 to be compiled.
Tested on both iOS6 & iOS7, as well as both 32 & 64 bit processors.


## Syntax
Check the demo project


## Youtube Data API v3
- [Youtube Data API v3 Doc](https://developers.google.com/youtube/v3/)
- [Obtain API key from Google API Console](https://console.developers.google.com)

##License

MIT License (MIT)

```
Copyright (c) 2014 MuhammadBassio

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

```
