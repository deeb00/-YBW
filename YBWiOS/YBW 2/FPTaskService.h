//
//  FPTaskService.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPTaskService : NSObject
@property(nonatomic, strong) NSMutableArray* tasks;

-(void)getTasksCompletionBlock:(void (^)(BOOL))completionBlock;


@end
