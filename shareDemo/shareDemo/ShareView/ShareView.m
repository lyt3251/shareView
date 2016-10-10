//
//  ShareView.m
//  shareDemo
//
//  Created by liuyuantao on 16/10/10.
//  Copyright © 2016年 liuyuantao. All rights reserved.
//

#import "ShareView.h"

@interface ShareView()
@property(nonatomic, strong)UILabel *label;
@end

@implementation ShareView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init
{
    self = [super init];
    if(self)
    {
        [self setupViews];
    }
    return self;
}


-(void)setupViews
{
    _label = [[UILabel alloc] init];
    _label.frame = self.bounds;
    [self addSubview:_label];
    _label.text = @"测试";
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    _label.frame = self.bounds;
    
    
}




@end
