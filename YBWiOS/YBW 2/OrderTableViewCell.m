//
//  OrderTableViewCell.m
//  YBW 2
//
//  Created by Семен on 08.11.15.
//  Copyright © 2015 Cookie Jew. All rights reserved.
//

#import "OrderTableViewCell.h"

@implementation OrderTableViewCell

- (void)layoutSubviews{

    UILabel* whatISTrouble = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width - 10, 20)];
    whatISTrouble.text = @"С чем проблема";
    [self addSubview:whatISTrouble];
    
    _troubleDevice = [[UILabel alloc] initWithFrame:CGRectMake(10, whatISTrouble.frame.origin.y + whatISTrouble.frame.size.height, self.frame.size.width - 10, 30)];
    [self addSubview:_troubleDevice];
    
    UILabel* typeOfProblemLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, _troubleDevice.frame.origin.y + _troubleDevice.frame.size.height + 20, self.frame.size.width - 10, 20)];
    typeOfProblemLabel.text = @"Тип проблемы";
    [self addSubview:typeOfProblemLabel ];

    _typeOfProblem = [[UILabel alloc] initWithFrame:CGRectMake(10, typeOfProblemLabel.frame.origin.y + typeOfProblemLabel.frame.size.height, self.frame.size.width - 10, 20)];
    [self addSubview:_typeOfProblem];
    
    
    
}

-(void)setCell{

    dispatch_async(dispatch_get_main_queue(), ^{
    
    if (!_troubleDevice) {
        [self layoutSubviews];
    }
    self.troubleDevice.text = _order.platform;
    self.typeOfProblem.text = _order.problem;
    });
    

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
