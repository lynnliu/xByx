//
//  xByxAppDelegate.h
//  xByx
//
//  Created by  lynn on 11/9/12.
//  Copyright (c) 2012 uLynn. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface xByxAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *input;
@property (weak) IBOutlet NSTextField *result;

@end
