//
//  FPOrderListService.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPOrderListService.h"
#import "FPAppServiceProvider.h"
#import "Order.h"
@implementation FPOrderListService

-(instancetype)init{
    _orders = [[NSMutableArray alloc]init];
    return self;
}
-(void)getOrdersCompletionBlock:(void (^)(BOOL))completionBlock{
    
    [[FPAppServiceProvider shared].connectionService getOrdersCompletionBlock:^(BOOL succeded, NSMutableArray * array) {
        _orders = [[NSMutableArray alloc]init];
        if(succeded){
            for (NSDictionary* dict in array) {
                [_orders addObject:[[Order alloc] initWithDictionary:dict]];
            }
            completionBlock(YES);
        }
        completionBlock(NO);
        
    }];    
}

@end
