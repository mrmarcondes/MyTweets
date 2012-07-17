//
//  TwitterUser.h
//  MyTweets
//
//  Created by Marco Rojo on 17/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwitterUser : NSObject

@property NSString* name;
@property (nonatomic, strong) NSMutableArray* followers;
@property (nonatomic, strong) NSMutableArray* following;
@property (nonatomic, strong) NSMutableArray* tweets;

-(void) addFollower:(TwitterUser *) follower;
-(void) removeFollower:(TwitterUser *) follower;
@end
