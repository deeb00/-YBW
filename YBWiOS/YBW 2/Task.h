//
//  Task.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Order.h"
#import "User.h"
@interface Task : NSObject
@property  ( strong, nonatomic) Order* order;
@property  ( strong, nonatomic) User* user;
@property  (  nonatomic) NSInteger price;
@property  (  nonatomic) float time;

-(instancetype)initWithOrder:(Order*) order andUser:(User*)user andPrice:(NSInteger)price andTime:(float) time;
-(instancetype)initWithDictionary:(NSDictionary*) dict;
@end
