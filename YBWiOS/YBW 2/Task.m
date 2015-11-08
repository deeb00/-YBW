//
//  Task.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "Task.h"
@implementation Task

-(instancetype)initWithOrder:(Order *)order andUser:(User *)user andPrice:(NSInteger)price andTime:(float)time{
    
    self = [super init];
    
    _order = order;
    _user = user;
    _price = price;
    _time = time;
    
    
    return self;
    
}

-(instancetype) initWithDictionary:(NSDictionary *)dict{
    
    self = [super init];
    
    return [[Task alloc] initWithOrder:[[Order alloc] initWithDictionary:dict[@"order"]] andUser:[[User alloc] initWithDictionary:dict[@"user"]] andPrice:[dict[@"price"] integerValue] andTime:[dict[@"time"] floatValue]];

}
@end
