//
//  User.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property( nonatomic, readonly) NSString* name;
@property( nonatomic, readonly) NSString* phone;
@property( nonatomic, readonly) NSInteger rating;

-(instancetype)initWIthName:(NSString*)name andPhone:(NSString*)phone andRating:(NSInteger)rating;
-(instancetype) initWithDictionary:(NSDictionary*)dictionary;
@end
