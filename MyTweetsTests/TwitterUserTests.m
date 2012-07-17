//
//  TwitterUserTests.m
//  MyTweets
//
//  Created by Marco Rojo on 17/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterUserTests.h"

@implementation TwitterUserTests

- (void)setUp
{
  [super setUp];

  TwitterUser *twitterUser = [[TwitterUser alloc] init];
  twitterUser.name = @"twitterUser";
}

- (void)tearDown
{
  // Tear-down code here.
  
  [super tearDown];
}

- (void) testAddFollowerToTwitterUser
{
  NSUInteger firstCount = 1;
  NSUInteger secondCount = 2;
  TwitterUser *twitterUser = [[TwitterUser alloc] init];
  twitterUser.name = @"twitterUser";

  TwitterUser *follower = [[TwitterUser alloc] init];
  follower.name = @"follower";
  
  [twitterUser addFollower:follower];
  STAssertEquals(twitterUser.followers.count, firstCount, @"Must have 1 follower");

  follower = [[TwitterUser alloc] init];
  follower.name = @"follower";
  
  [twitterUser addFollower:follower];
  STAssertEquals(twitterUser.followers.count, secondCount, @"Must have 2 followers");

}


-(void)testRemoveFollowerFromTwitterUser
{
  
}

-(void)testAddFollowingToTwitterUser
{
  
}

-(void)testRemoveFollowingFromTwitterUser
{
  
}

-(void)testAddTweetToTwitterUser
{
  
}

@end
