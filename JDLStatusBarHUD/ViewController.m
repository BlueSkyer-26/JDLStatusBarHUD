//
//  ViewController.m
//  JDLStatusBarHUD
//
//  Created by 胜炫电子 on 2018/2/26.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "ViewController.h"
#import "JDLStatusBarHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *titleArray =@[@"成功",@"失败",@"隐藏",@"普通文字图片",@"正在加载"];
    for (int i=0; i < titleArray.count; i ++) {
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor =[UIColor purpleColor];
        btn.frame =CGRectMake(100, 100 +70 *i, 160, 50);
        btn.tag =i;
        [btn setTitle:titleArray[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(showStatusHUD:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)showStatusHUD:(UIButton *)sender{
    switch (sender.tag) {
        case 0:
            [JDLStatusBarHUD showSuccess:@"成功啦啦啦啦啦啦"];
            break;
        case 1:
            [JDLStatusBarHUD showError:@"失败啦啦啦啦啦啦啦"];
            break;
        case 2:
            [JDLStatusBarHUD hide];
            break;
        case 3:
            [JDLStatusBarHUD showMessage:@"哈哈哈哈哈" image:[UIImage imageNamed:@"jdllogo1024"]];
            break;
        case 4:
            [JDLStatusBarHUD showLoading:@"加载中...."];
            break;
            
        default:
            break;
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
