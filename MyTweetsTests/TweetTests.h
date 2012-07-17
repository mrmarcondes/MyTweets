//
//  TweetTests.h
//  TweetTests
//
//  Created by Marco Rojo on 30/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Tweet.h"

@interface TweetTests : SenTestCase

-(void)testTweetInitWithContentAndLongitudeAndLatitude;

-(void)testTweetInitWithContent;

-(void)testTweetLatitudeValues;

-(void)testTweetLongitudeValues;

-(void)testTweetContentValues;

@end
