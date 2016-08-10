//
//  ViewController.m
//  弹出下拉菜单
//
//  Created by 王建龙 on 16/4/12.
//  Copyright © 2016年 王建龙. All rights reserved.
//

#import "ViewController.h"
#import "WJLPopViewController.h"

@interface ViewController () <WJLPopViewControllerDelegate>
 
@property (weak, nonatomic) IBOutlet UIButton *bt;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pop)];
    NSLog(@"test");
 //hahaha
}

- (void)pop{
//    WJLPopViewController *popVC = [[WJLPopViewController alloc] initWithPopView:self.bt orBaritem:nil];
 
    WJLPopViewController *popVC = [[WJLPopViewController alloc] initWithPopView:nil  orBaritem:self.navigationItem.rightBarButtonItem];
    popVC.listsArr = @[@"扫一扫",@"逛一逛",@"撸啊撸"];
    
    popVC.delegate = self;
    [self presentViewController:popVC animated:YES completion:nil];

}

- (void)popViewController:(WJLPopViewController *)con didSelectAtIndex:(int)index{

    NSLog(@"点击了第%d个",index);
}
@end
