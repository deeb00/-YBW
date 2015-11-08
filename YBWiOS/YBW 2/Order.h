//
//  Order.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
@interface Order : NSObject

@property( nonatomic, readonly) NSInteger id;

@property( nonatomic, readonly) User* user;
@property( nonatomic, readonly) NSString* problem;
@property( nonatomic, readonly) NSString* comment;
@property( nonatomic, readonly) NSInteger importance;
@property( nonatomic, readonly) NSString* platform;
@property( nonatomic, readonly) BOOL status;


-(instancetype)initWithId:(NSInteger)id andUser:(User*)user andProblem:(NSString*)problem andComment:(NSString*)comment andImportance:(NSInteger)importance andPlatform:(NSString*)platform andStatus:(BOOL)status;
-(instancetype) initWithDictionary:(NSDictionary*)dictionary;

@end
