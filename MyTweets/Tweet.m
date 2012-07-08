//
//  Tweet.m
//  MyTweets
//
//  Created by Marco Rojo on 02/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

@synthesize content = _content;
@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize timestamp = _timestamp;

-(id) initWithContent:(NSString *)content
            longitute:(double)longitude
             latitude:(double)latitude 
{
  
  self.content = content;
  self.latitude = latitude;
  self.longitude = longitude;
  self.timestamp = [NSDate date];
  
  return [super init];
}

-(id) initWithContent:(NSString *)content 
{
  return [self initWithContent:content longitute:0.0 latitude:0.0];
}

-(void) setLatitude:(double)latitude {
  if (latitude > 90.0 || latitude < -90.0){
    return;
  }
  _latitude = latitude;
}

-(void) setLongitude:(double)longitude
{
  if (longitude > 180.0 || longitude < -180.0){
    return;
  }
  _longitude = longitude;
}

-(void) setContent:(NSString *)content
{
  if (content.length > 140){
    return;
  }
  _content = content;
}


@end
