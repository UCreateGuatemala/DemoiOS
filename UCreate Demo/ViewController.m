//
//  ViewController.m
//  UCreate Demo
//
//  Created by AKBAL34 on 5/15/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController


-(void)viewDidAppear:(BOOL)animated{

    self.tabBarController.tabBar.hidden=NO;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"ENTRO A VIEWDIDLOAD");
    self.tabBarController.tabBar.hidden=NO;

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
