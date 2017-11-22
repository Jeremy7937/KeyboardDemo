//
//  ViewController.m
//  KeyboardDemo
//
//  Created by 郭凯 on 2017/11/21.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import <IQKeyboardManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = 50.0f;
}

- (IBAction)push:(id)sender {
    OneViewController *one = [[OneViewController alloc] init];
    [self.navigationController pushViewController:one animated:YES];
}

- (IBAction)pushTwoVc:(id)sender {
    TwoViewController *two = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
