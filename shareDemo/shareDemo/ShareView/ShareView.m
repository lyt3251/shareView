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
@property(nonatomic, strong)UIImageView *imageView;
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
    _label.textAlignment = NSTextAlignmentCenter;
    _label.frame = self.bounds;
    [self addSubview:_label];
    _label.text = @"测试";
    
    _imageView = [[UIImageView alloc] init];
    _imageView.contentMode = UIViewContentModeCenter;
    [self addSubview:_imageView];
//    NSBundle *bundle = [NSBundle bundleWithIdentifier:@"resources.bundle"];
//    [_imageView setImage:[UIImage imageNamed:@"icon_search@2x.png" inBundle:bundle compatibleWithTraitCollection:nil ]];
    NSString *imageName = @"resources.bundle/icon_search";
    [_imageView setImage:[UIImage imageNamed:imageName]];
    
    
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    CGRect rect = self.bounds;
    
    _label.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height/2);
    _imageView.frame = CGRectMake(rect.origin.x, rect.origin.y + rect.size.height/2, rect.size.width, rect.size.height/2);
    
    
}




@end
