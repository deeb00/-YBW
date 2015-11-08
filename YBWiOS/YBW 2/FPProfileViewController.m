//
//  FPProfileViewController.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPProfileViewController.h"
#import "FPAppServiceProvider.h"
#import "User.h"
#import "Order.h"

@interface FPProfileViewController (){
    User* mainUser;
}

@end

@implementation FPProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[FPAppServiceProvider shared].connectionService getProfileCompletionBlock:^(BOOL succeded, NSDictionary * array) {
        
        if(succeded){
        
            mainUser = [[User alloc] initWithDictionary:array];
            
        }
        
    }];

    [[FPAppServiceProvider shared].connectionService getOrdersCompletionBlock:^(BOOL succeded, NSMutableArray * array) {
        NSMutableArray* das = [[NSMutableArray alloc] init];
        if(succeded){
            for (NSDictionary* dict in array) {
                [das addObject:[[Order alloc] initWithDictionary:dict]];
            }
            
        }
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
