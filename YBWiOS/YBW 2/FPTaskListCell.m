//
//  FPTaskListCell.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//


//
//  OrderTableViewCell.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "FPTaskListCell.h"

@implementation FPTaskListCell

- (void)layoutSubviews{
    
    _numberOfOrder = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 30)];
    [self addSubview:_numberOfOrder];
    
    _price = [[UILabel alloc]initWithFrame:CGRectMake(10, _numberOfOrder.frame.origin.y + _numberOfOrder.frame.size.height, 70, 50)];
    [self addSubview:_price];
    
    _time = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width - 100, 20, 100, 50)];
    [self addSubview:_time];
    
    _name = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width - 150, _numberOfOrder.frame.origin.y + _numberOfOrder.frame.size.height, self.frame.size.height - 50, 100)];
    [self addSubview:_name];
    
}

-(void)setCell{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (!_time) {
            [self layoutSubviews];
        }
        
        self.numberOfOrder.text = [NSString stringWithFormat:@"Заявка №%d", (int)_task.order.id ];
        self.price.text = [NSString stringWithFormat:@"%d руб.",(int)_task.price];
        self.name.text = _task.user.name;
        self.time.text = [ NSString stringWithFormat:@"%.1f", _task.time];
        
    });
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

