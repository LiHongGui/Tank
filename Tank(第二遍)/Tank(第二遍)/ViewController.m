//
//  ViewController.m
//  Tank(第二遍)
//
//  Created by MichaelLi on 16/9/18.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *tankImage;
- (IBAction)topButton:(UIButton *)sender;
- (IBAction)leftButton:(UIButton *)sender;
- (IBAction)rightButton:(UIButton *)sender;
- (IBAction)bottomButton:(UIButton *)sender;
- (IBAction)bigButton:(UIButton *)sender;
- (IBAction)smallButton:(UIButton *)sender;
- (IBAction)cwButton:(UIButton *)sender;
- (IBAction)ccwButton:(UIButton *)sender;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark
#pragma mark -  抽取方法
-(void) moveTank:(int)numberButton
{
    //获取初始frame
    CGRect oldFrame = self.tankImage.frame;
    switch (numberButton) {
            /*
             也可以通过控件的tag值来设置
             */
        case 1:
            //向上移动
            oldFrame.origin.y -= 40;
            break;
        case 2:
            //向下移动
            oldFrame.origin.y += 40;
        case 3:
            //向左移动
            oldFrame.origin.x -= 40;
        case 4:
            //向右移动
            oldFrame.origin.x += 40;
        case 5:
            oldFrame.size.width +=20;
            oldFrame.size.height +=20;
            oldFrame.origin.x -=10;
            oldFrame.origin.y -=10;
        case 6:
            oldFrame.size.width -=20;
            oldFrame.size.height -=20;
            oldFrame.origin.x +=10;
            oldFrame.origin.y +=10;
        default:
            break;
    }

    [UIView animateWithDuration:1 animations:^{
        self.tankImage.frame = oldFrame;

    }];

}
#pragma mark
#pragma mark -  上
- (IBAction)topButton:(UIButton *)sender {
//
//    //获取初始frame
//    CGRect oldFrame = self.tankImage.frame;
//
//    //向上移动
//    oldFrame.origin.y -= 20;
//
//    [UIView animateWithDuration:1 animations:^{
//        self.tankImage.frame = oldFrame;
//
//    }];
    [self moveTank:1];
    NSLog(@"上");
}
#pragma mark
#pragma mark -  左
- (IBAction)leftButton:(UIButton *)sender {

//    CGRect oldFrame = self.tankImage.frame;
//    oldFrame.origin.x -= 20;
//
//    [UIView animateWithDuration:1 animations:^{
//        self.tankImage.frame = oldFrame;
//    }];
    [self moveTank:3];
    NSLog(@"左");
}
#pragma mark
#pragma mark -  右
- (IBAction)rightButton:(UIButton *)sender {

//    CGRect oldFrame = self.tankImage.frame;
//    oldFrame.origin.x += 20;
//
//    [UIView animateWithDuration:1 animations:^{
//        self.tankImage.frame = oldFrame;
//    }];
     [self moveTank:4];
}
#pragma mark
#pragma mark -  下
- (IBAction)bottomButton:(UIButton *)sender {

//    CGRect oldFrame = self.tankImage.frame;
//    oldFrame.origin.y += 20;
//
//    [UIView animateWithDuration:1 animations:^{
//        self.tankImage.frame = oldFrame;
//    }];
    [self moveTank:2];
}
#pragma mark
#pragma mark -  放大
- (IBAction)bigButton:(UIButton *)sender {

    [self moveTank:5];
//    self.tankImage.transform = CGAffineTransformScale(self.tankImage.transform, 2, 2);
}
#pragma mark
#pragma mark -  缩小
- (IBAction)smallButton:(UIButton *)sender {
    
    [self moveTank:6];
//    self.tankImage.transform = CGAffineTransformScale(self.tankImage.transform, 0.8, 0.8);
}
#pragma mark
#pragma mark -  顺时针旋转
- (IBAction)cwButton:(UIButton *)sender {
    self.tankImage.transform = CGAffineTransformRotate(self.tankImage.transform, M_PI_4);

}
#pragma mark
#pragma mark -  逆时针旋转
- (IBAction)ccwButton:(UIButton *)sender {

    self.tankImage.transform = CGAffineTransformRotate(self.tankImage.transform, -M_PI_4);
}
@end
