//
//  AppDelegate.m
//  TLKit
//
//  Created by 李伯坤 on 2017/9/11.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "AppDelegate.h"
#import "NSString+Encrypt.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSDictionary *dic = @{ @"Phone" : @"18680083268",
                           @"CustomerID" : @"3174",
                           @"PhoneMac" : @"99000905074633" };
    Byte byteData[32] = {0x61, 0x72, 0x67, 0x66, 0x5e, 0x6b, 0x61, 0x6c,
        0x6b, 0x64, 0x5c, 0x59, 0x65, 0x68, 0x59, 0x51, 0x5f, 0x57, 0x65, 0x51, 0x5e, 0x57,
        0x4a, 0x38, 0x45, 0x3b, 0x31, 0x3e, 0x37, 0x34, 0x39, 0x2e};
    NSString *argument = [NSString stringWithFormat:@"%@", [self jsonStringEncoded:dic]];
    argument = [argument encryptedWithAESUsingByteKey:byteData andIV:nil];
    NSLog(@"argument: %@",argument);

    return YES;
}

- (NSString *)jsonStringEncoded:(NSDictionary *)dic {
    if ([NSJSONSerialization isValidJSONObject:dic]) {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
        NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        if (!error) return json;
    }
    return nil;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
