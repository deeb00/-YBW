//
//  FPConnectionService.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPConnectionService.h"

@implementation FPConnectionService

-(void)getProfileCompletionBlock:(void (^)(BOOL, NSDictionary *))completionBlock{
    
    [self sendRequest:@"http://10.0.0.21:3000/users/1" withCompletionBlock:completionBlock];
    
}

-(void)getOrdersCompletionBlock:(void (^)(BOOL, NSMutableArray *))completionBlock {
    [self sendRequest:@"http://10.0.0.21:3000/orders" withCompletionBlock:^(BOOL suc, NSDictionary * dict) {
        completionBlock(suc,(NSMutableArray*)dict);
    }];
}

-(void)getTasksCompletionBlock:(void (^)(BOOL, NSMutableArray *))completionBlock {
    [self sendRequest:@"http://10.0.0.21:3000/tasks" withCompletionBlock:^(BOOL suc, NSDictionary * dict) {
        completionBlock(suc,(NSMutableArray*)dict);
    }];
}

-(void)sendRequest:(NSString*)string withCompletionBlock:(void (^)(BOOL, NSDictionary *))completionBlock{
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:string]];
    
    [request setHTTPMethod:@"GET"];
    
    
    NSURLSession *session = [self backgroundSession];
    
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse *response, NSError *error) {
                                      
                                      if (error) {
                                          return;
                                      }
                                      
                                      NSDictionary*  jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                                      
                                      if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
                                          
                                          NSLog(@"Response HTTP Status code: %ld\n", (long)[(NSHTTPURLResponse *)response statusCode]);
                                          if ([(NSHTTPURLResponse *)response statusCode] == 200 || [(NSHTTPURLResponse *)response statusCode] == 204) {
                                              if(completionBlock)
                                                  completionBlock(YES,jsonArray);
                                              return;
                                          }
                                          if(completionBlock)
                                              completionBlock(NO,0);
                                          
                                      }
                                  }];
    [task resume];
    

    
}

- (NSURLSession *)backgroundSession
{
    static NSURLSession *session = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        configuration.URLCache = [NSURLCache sharedURLCache]; // NEW LINE ON TOP OF OTHERWISE WORKING CODE
        configuration.requestCachePolicy = NSURLRequestUseProtocolCachePolicy;  // NEW LINE ON TOP OF OTHERWISE WORKING CODE
        session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
    });
    return session;
}




@end
