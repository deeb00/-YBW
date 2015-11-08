//
//  User.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "User.h"

@implementation User

-(instancetype)initWIthName:(NSString *)name andPhone:(NSString *)phone andRating:(NSInteger)rating{

    self = [super init];
    _name = name;
    _phone = phone;
    _rating = rating;
    
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary{

    self = [super init];
    
    return [[User alloc]initWIthName:dictionary[@"name"]
                            andPhone:dictionary[@"phone"]
                           andRating:[((NSDictionary*)dictionary[@"rating"])[@"value"]integerValue]];
}


@end
