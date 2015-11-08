//
//  FPOrderListTableViewController.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPOrderListTableViewController.h"
#import "OrderTableViewCell.h"
#import "Order.h"
#import "FPAppServiceProvider.h"
@interface FPOrderListTableViewController ()

@end

@implementation FPOrderListTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[OrderTableViewCell class] forCellReuseIdentifier:@"cell"];
  
    
}

-(void)viewWillAppear:(BOOL)animated{
    [[FPAppServiceProvider shared].orderListService getOrdersCompletionBlock:^(BOOL suc) {
        if (suc) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
            
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 1) {
        return 20;
    }
    if (indexPath.row%2 == 0 ) {
        return 10;
    }
    return 150;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[FPAppServiceProvider shared].orderListService.orders count] * 2 + 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 1) {
        UITableViewCell* cell = [[UITableViewCell alloc] init];
        cell.textLabel.text = @"Добавить";
        return cell;
    }
    if (indexPath.row%2 == 0) {
        return [[UITableViewCell alloc] init];
    }
    
    OrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Order* order =((Order*)[FPAppServiceProvider shared].orderListService.orders[indexPath.row/2-1]);
    cell.order = order;
    switch (order.importance) {
        case 0:
            cell.backgroundColor = [UIColor greenColor];
            break;
        case 1:
            cell.backgroundColor = [UIColor yellowColor];
            break;
        case 2:
            cell.backgroundColor =[UIColor orangeColor];
            break;
        case 3:
            cell.backgroundColor = [UIColor redColor];
            break;
            
        default:
            break;
    }
    [cell setCell];
    return cell;
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
