//
//  FPAppServiceProvider.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FPConnectionService.h"
#import "FPTaskService.h"
#import "FPOrderListService.h"

@interface FPAppServiceProvider : NSObject



@property (nonatomic, strong, readonly) FPConnectionService *connectionService;
@property (nonatomic, strong, readonly) FPOrderListService *orderListService;
@property (nonatomic, strong, readonly) FPTaskService *taskService;

+ (FPAppServiceProvider *)shared;
+ (instancetype)alloc __attribute__((unavailable("alloc not available, call shared instead")));
- (instancetype)init __attribute__((unavailable("init not available, call shared instead")));
+ (instancetype)new __attribute__((unavailable("new not available, call shared instead")));

@end
