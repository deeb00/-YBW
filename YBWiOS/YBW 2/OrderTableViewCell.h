//
//  OrderTableViewCell.h
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Order.h"
@interface OrderTableViewCell : UITableViewCell

@property( nonatomic, strong) IBOutlet UILabel* troubleDevice;
@property( nonatomic, strong) IBOutlet UILabel* typeOfProblem;
@property( nonatomic, strong) IBOutlet Order* order;

-(void)setCell;
@end
