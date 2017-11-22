//
//  OneViewController.m
//  KeyboardDemo
//
//  Created by 郭凯 on 2017/11/21.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "OneViewController.h"
#import <IQKeyboardManager.h>

@interface OneViewController ()

@end

@implementation OneViewController

- (void)loadView {
    [super loadView];

    CGRect screenRect = [UIScreen mainScreen].bounds;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    scrollView.contentSize = CGSizeMake(screenRect.size.width, screenRect.size.height);
    if (@available(iOS 11.0, *)) {
        scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    self.view = scrollView;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 40)];
    testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:testView];
    
    UITextField *textfield = [[UITextField alloc] initWithFrame:CGRectMake(50, 500, self.view.bounds.size.width-100, 30)];
    textfield.placeholder = @"测试测试。。";
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textfield];
    
    [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
