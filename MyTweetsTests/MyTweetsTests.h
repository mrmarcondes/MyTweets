//
//  MyTweetsTests.h
//  MyTweetsTests
//
//  Created by Marco Rojo on 30/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Tweet.h"

@interface MyTweetsTests : SenTestCase

-(void)testTweetInitWithContentAndLongitudeAndLatitude;

-(void)testTweetInitWithContent;

-(void)testTweetLatitudeValues;

-(void)testTweetLongitudeValues;

-(void)testTweetContentValues;

@end
