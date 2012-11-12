//
//  xByxAppDelegate.m
//  xByx
//
//  Created by  lynn on 11/9/12.
//  Copyright (c) 2012 uLynn. All rights reserved.
//

#import "xByxAppDelegate.h"
#import "CaculatorHelper.h"

@implementation xByxAppDelegate

int count;
- (IBAction)caculator:(NSButton *)sender
{
    NSString *temp = [NSString string];
    for(int i = 1; i <= [self.input.stringValue intValue]; i ++){
        NSString *num1 = nil;
        if (i == 1) num1 = [NSString stringWithFormat:@"%d",i];
        else if (i == [self.input.stringValue intValue]) break;
        else num1 = temp;
        NSString *num2 = [NSString stringWithFormat:@"%d",i+1];
        temp = [CaculatorHelper mutiplyWithBigNums:num1 num2:num2];
    }
    
    self.result.stringValue = [self.result.stringValue stringByAppendingFormat:@"%@! = %@",self.input.stringValue,temp];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

@end
