//
//  FPAppServiceProvider.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPAppServiceProvider.h"

@interface FPAppServiceProvider()

@property (nonatomic, strong, readwrite) FPConnectionService *connectionService;
@property (nonatomic, strong, readwrite) FPOrderListService *orderListService;
@property (nonatomic, strong, readwrite) FPTaskService *taskService;

@end

@implementation FPAppServiceProvider

+ (FPAppServiceProvider*)shared
{
    static dispatch_once_t pred;
    static FPAppServiceProvider *shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] initUniqueInstance];
    });
    
    return shared;
}

- (instancetype)initUniqueInstance {
    
    self = [super init];
    self.connectionService = [[FPConnectionService alloc] init];
    self.orderListService = [[FPOrderListService alloc] init];
    self.taskService = [[FPTaskService alloc] init];

    return self;
    
}

@end
