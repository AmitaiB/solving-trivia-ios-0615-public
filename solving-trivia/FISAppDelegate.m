//
//  FISAppDelegate.m
//  solving-trivia
//
//  Created by iOS Staff on 9/30/14
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end
@implementation FISAppDelegate

-(NSString*) solveTrivia
{
    // write your solution here!
    NSMutableString *triviumAnswer = [[NSMutableString alloc] init];
    
    NSDictionary *stateAndCapitals = @{
    @"Montgomery": @"Alabama",
    @"Juneau": @"Alaska",
    @"Phoenix": @"Arizona",
    @"Little Rock": @"Arkansas",
    @"Sacramento": @"California",
    @"Denver": @"Colorado",
    @"Hartford": @"Connecticut",
    @"Dover": @"Delaware",
    @"Tallahassee": @"Florida",
    @"Atlanta": @"Georgia",
    @"Honolulu": @"Hawaii",
    @"Boise": @"Idaho",
    @"Springfield": @"Illinois",
    @"Indianapolis": @"Indiana",
    @"Des Moines": @"Iowa",
    @"Topeka": @"Kansas",
    @"Frankfort": @"Kentucky",
    @"Baton Rouge": @"Louisiana",
    @"Augusta": @"Maine",
    @"Annapolis": @"Maryland",
    @"Boston": @"Massachusetts",
    @"Lansing": @"Michigan",
    @"Saint Paul": @"Minnesota",
    @"Jackson": @"Mississippi",
    @"Jefferson City": @"Missouri",
    @"Helena": @"Montana",
    @"Lincoln": @"Nebraska",
    @"Carson City": @"Nevada",
    @"Concord": @"New Hampshire",
    @"Trenton": @"New Jersey",
    @"Santa Fe": @"New Mexico",
    @"Albany": @"New York",
    @"Raleigh": @"North Carolina",
    @"Bismarck": @"North Dakota",
    @"Columbus": @"Ohio",
    @"Oklahoma City": @"Oklahoma",
    @"Salem": @"Oregon",
    @"Harrisburg": @"Pennsylvania",
    @"Providence": @"Rhode Island",
    @"Columbia": @"South Carolina",
    @"Pierre": @"South Dakota",
    @"Nashville": @"Tennessee",
    @"Austin": @"Texas",
    @"Salt Lake City": @"Utah",
    @"Montpelier": @"Vermont",
    @"Richmond": @"Virginia",
    @"Olympia": @"Washington",
    @"Charleston": @"West Virginia",
    @"Madison": @"Wisconsin",
    @"Cheyenne": @"Wyoming"};

    for (NSString *capital in stateAndCapitals) {
        BOOL matchThusFails = NO;
        NSSet *thisCapitalsLetters = [self charsInString:capital];
        NSSet *thisStatesLetters = [self charsInString:stateAndCapitals[capital]];
        for (NSString *stateLetter in thisStatesLetters) {
            for (NSString *capitalLetter in thisCapitalsLetters) {
                if ([stateLetter isEqualToString:capitalLetter]) {
                    matchThusFails = YES;
                }
            }
        }
        if (matchThusFails == NO)
            triviumAnswer = stateAndCapitals[capital];
    }
    
    
    return [triviumAnswer copy];
}

-(NSSet*)charsInString:(NSString *)inputStr {
    NSSet* tempSet0 = [NSSet setWithArray:[[inputStr lowercaseString] componentsSeparatedByString:@""]];
    NSMutableSet *tempSet = [tempSet0 mutableCopy];
    [tempSet removeObject:@" "];
    return [tempSet copy];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
@end
