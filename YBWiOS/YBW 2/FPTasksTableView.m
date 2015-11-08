//
//  FPTasksTableView.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

//
//  FPOrderListTableViewController.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "Task.h"
#import "FPTasksTableView.h"
#import "FPAppServiceProvider.h"
#import "FPTaskListCell.h"
@implementation FPTasksTableView

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[FPTaskListCell class] forCellReuseIdentifier:@"cell"];
    
    
}
-(void)viewWillAppear:(BOOL)animated{
    [[FPAppServiceProvider shared].taskService getTasksCompletionBlock:^(BOOL suc) {
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
    
    Task* task =((Task*)[FPAppServiceProvider shared].taskService.tasks[indexPath.row/2-1]);
    if ([task.user isEqual:[NSNull null]]) {
        return 80;
    }else
        return 150;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[FPAppServiceProvider shared].taskService.tasks count]*2 + 2;
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
    
    
    FPTaskListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Task* task =((Task*)[FPAppServiceProvider shared].taskService.tasks[indexPath.row/2-1]);
    cell.task = task;
    [cell setCell];
    cell.backgroundColor = [UIColor grayColor];
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
