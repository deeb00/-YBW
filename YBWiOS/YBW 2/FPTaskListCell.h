//
//  FPTaskListCell.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
@interface FPTaskListCell : UITableViewCell

@property(nonatomic) Task* task;
@property(nonatomic) IBOutlet UILabel* numberOfOrder;
@property(nonatomic) IBOutlet UILabel* price;
@property(nonatomic) IBOutlet UILabel* time;
@property(nonatomic) IBOutlet UILabel* name;
-(void)setCell;
@end
