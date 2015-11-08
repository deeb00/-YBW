//
//  Order.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//
#import "User.h"
#import "Order.h"

@implementation Order

-(instancetype)initWithId:(NSInteger)id andUser:(User *)user andProblem:(NSString *)problem andComment:(NSString *)comment andImportance:(NSInteger)importance andPlatform:(NSString *)platform andStatus:(BOOL)status  {
    
    self = [super init];
    _id = id;
    _user = user;
    _platform = platform;
    _problem = problem;
    _comment = comment;
    _importance = importance;
    _status = status;
    return self;
}

-(instancetype) initWithDictionary:(NSDictionary*)dictionary{
    
    
    return [[Order alloc] initWithId:[dictionary[@"id"] integerValue] andUser:[[User alloc] initWithDictionary:dictionary[@"user"]] andProblem:((NSDictionary*)dictionary[@"problem"])[@"value"] andComment:((NSDictionary*)dictionary[@"comment"])[@"value"] andImportance:[((NSDictionary*)dictionary[@"importance"])[@"value"] integerValue] andPlatform:((NSDictionary*)dictionary[@"platform"])[@"value"] andStatus:[((NSDictionary*)dictionary[@"status"])[@"value"] boolValue]];
}
@end
