//
//  MyTweetsTests.m
//  MyTweetsTests
//
//  Created by Marco Rojo on 30/06/2012.
//  Copyright (c) 2012 Megon Internet Services Ltda. All rights reserved.
//

#import "MyTweetsTests.h"

@implementation MyTweetsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testTweetInitWithContentAndLongitudeAndLatitude
{
  NSString *myContent = @"MyContent";
  Tweet *tweet = [[Tweet alloc] initWithContent:myContent longitute:90.0 latitude:90.0];
  STAssertEquals(tweet.content, myContent, @"Values are different");
  STAssertEquals(tweet.longitude, 90.0, @"Values are different");
  STAssertEquals(tweet.latitude, 90.0, @"Values are different");
}

- (void)testTweetInitWithContent
{
  NSString *myContent = @"MyContent";
  Tweet *tweet = [[Tweet alloc] initWithContent:myContent];
  STAssertEquals(tweet.content, myContent, @"values are different");
  STAssertEquals(tweet.latitude, 0.0, @"values are different");
  STAssertEquals(tweet.longitude, 0.0, @"values are different");
}

- (void)testTweetLatitudeValues
{
  Tweet *tweet = [[Tweet alloc] init ];
  tweet.latitude =90.01;
  STAssertTrue(tweet.latitude == 0.0, @"latitude value is invalid");
  
  tweet.latitude = -90.01;
  STAssertTrue(tweet.latitude == 0.0, @"latitude value is invalid");
  

  tweet.latitude = -90.00;
  STAssertTrue(tweet.latitude == -90.0, @"latitude value is invalid");
  
  tweet.latitude = 90.00;
  STAssertTrue(tweet.latitude == 90.0, @"latitude value is invalid");
}

- (void)testTweetLongitudeValues
{
  Tweet *tweet = [[Tweet alloc] init ];
  tweet.longitude =180.01;
  STAssertTrue(tweet.longitude == 0.0, @"longitude value is invalid");
  
  tweet.longitude = -180.01;
  STAssertTrue(tweet.longitude == 0.0, @"longitude value is invalid");
  
  
  tweet.longitude = -180.00;
  STAssertTrue(tweet.longitude == -180.0, @"longitude value is invalid");
  
  tweet.longitude = 180.00;
  STAssertTrue(tweet.longitude == 180.0, @"longitude value is invalid");
}

- (void)testTweetContentValues
{
  Tweet *tweet = [[Tweet alloc] init ];
  NSString *content = @"";
  for (int i = 0; i<= 141; i++) {
    content = [content stringByAppendingString:@"a"];
  }
  tweet.content = content;
  STAssertNil(tweet.content, @"content value is invalid");
  
  content = @"";
  for (int i = 1; i<= 140; i++) {
    content = [content stringByAppendingString:@"a"];
  }
  tweet.content = content;
  STAssertEquals(tweet.content, content, @"content value is invalid");
}


@end
