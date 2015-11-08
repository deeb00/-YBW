//
//  FPOrderListService.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPOrderListService : NSObject

@property (nonatomic, readwrite) NSMutableArray* orders;
-(void)getOrdersCompletionBlock:(void (^)(BOOL))completionBlock;

@end
