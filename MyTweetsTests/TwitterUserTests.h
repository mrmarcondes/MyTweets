//
//  TwitterUserTests.h
//  MyTweets
//
//  Created by Marco Rojo on 17/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Tweet.h"
#import "TwitterUser.h"

@interface TwitterUserTests : SenTestCase

-(void)testAddFollowerToTwitterUser;
-(void)testRemoveFollowerFromTwitterUser;
-(void)testAddFollowingToTwitterUser;
-(void)testRemoveFollowingFromTwitterUser;
-(void)testAddTweetToTwitterUser;

@end
