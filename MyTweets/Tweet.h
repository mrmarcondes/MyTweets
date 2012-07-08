//
//  Tweet.h
//  MyTweets
//
//  Created by Marco Rojo on 02/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property NSString* content;
@property double longitude;
@property double latitude;
@property NSDate* timestamp;

-(id) initWithContent:(NSString *) content 
            longitute:(double) longitude
             latitude:(double) latitude;

-(id) initWithContent:(NSString *) content;
@end
