//
//  FPConnectionService.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPConnectionService : NSObject<NSURLSessionDelegate>

-(void)getProfileCompletionBlock:(void (^)(BOOL, NSDictionary *))completionBlock;

-(void)getOrdersCompletionBlock:(void (^)(BOOL, NSMutableArray *))completionBlock;

-(void)getTasksCompletionBlock:(void (^)(BOOL, NSMutableArray *))completionBlock;

@end
