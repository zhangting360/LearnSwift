//
//  CircleProgress.m
//  ZhiNengGuangFu
//
//  Created by 张挺 on 2017/10/10.
//  Copyright © 2017年 choice. All rights reserved.
//

#import "CircleProgress.h"

@interface CircleProgress ()
@property (nonatomic, strong) CAShapeLayer *animationLayer;
@end

@implementation CircleProgress

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer *tapClick = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickView)];
        [self addGestureRecognizer:tapClick];
        self.progressFloat = 0;
    }
    return self;
}

-(void)setUpAnimationLayer
{
    float selfW = CGRectGetWidth(self.frame);
    float selfH = CGRectGetHeight(self.frame);
    
    //因为会多次点击，所以要将该图层移除，并且指针置空
    [self.animationLayer removeFromSuperlayer];
    self.animationLayer = nil;
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    //参数依次是：圆心坐标，半径，开始弧度，结束弧度   画线方向：yes为顺时针，no为逆时针
    [path addArcWithCenter:CGPointMake(selfW/2, selfH/2) radius:selfW/4 startAngle:-M_PI / 2 endAngle:-M_PI/2 + 2*M_PI*self.progressFloat clockwise:TRUE];
    
    CAShapeLayer * pathLayer = [CAShapeLayer layer];
    pathLayer.path = path.CGPath;
    pathLayer.strokeColor = [[UIColor blueColor]CGColor];//画线颜色
    pathLayer.fillColor = [[UIColor clearColor]CGColor];//填充颜色
    pathLayer.lineJoin = kCALineJoinRound;
    pathLayer.lineWidth = selfW/2;
    self.layer.mask = pathLayer;

    [self setAnimationLayer:pathLayer];
}

-(void)clickView{
    [self setUpAnimationLayer];
    
    [self.animationLayer removeAllAnimations];//每次将之前的动画都清除了

    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration = 2.0;
    pathAnimation.fromValue = @(0);
    pathAnimation.toValue = @(1);
    [self.animationLayer addAnimation:pathAnimation forKey:@"strokeEnd"];
}

#pragma mark - lazy method
-(void)setProgressFloat:(float)progressFloat{
    _progressFloat = progressFloat;
    [self setUpAnimationLayer];
}

@end
