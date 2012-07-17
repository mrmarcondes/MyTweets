//
//  TwitterUser.m
//  MyTweets
//
//  Created by Marco Rojo on 17/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterUser.h"

@implementation TwitterUser

@synthesize name = _name;
@synthesize followers = _followers;
@synthesize following = _following;
@synthesize tweets = _tweets;

-(void) addFollower:(TwitterUser *)follower
{
  if (_followers == nil){
    _followers = [[NSMutableArray alloc] init];
  }
  [_followers addObject:follower];
}
@end
