//
//  FPTaskService.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPTaskService.h"
#import "FPAppserviceProvider.h"
#import "Task.h"
@implementation FPTaskService


-(instancetype)init{

    self = [super init];
    
    _tasks = [[NSMutableArray alloc] init];
    
    return self;
    
}

-(void)getTasksCompletionBlock:(void (^)(BOOL))completionBlock{
    [[FPAppServiceProvider shared].connectionService getTasksCompletionBlock:^(BOOL suc, NSMutableArray * array) {
        _tasks = [[NSMutableArray alloc] init];

        if (suc){
            for (NSDictionary* dict in array){
                [_tasks addObject:[[Task alloc] initWithDictionary:dict]];
            }
            completionBlock(YES);
         }
    }];
}

@end
