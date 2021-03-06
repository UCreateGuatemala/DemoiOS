//
//  modificaLogoSlogan.h
//  UCreate Demo
//
//  Created by AKBAL34 on 6/9/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modificaLogoSlogan : UIViewController

- (IBAction)drag: (UIPanGestureRecognizer*) recognizer;

- (IBAction)handlePinch:(UIGestureRecognizer *)sender;

- (IBAction)handleSwipeRight:(UIGestureRecognizer *)sender;

- (IBAction)handleSwipeLeft:(UIGestureRecognizer *)sender;

- (IBAction)alertAction;


@property IBOutlet UILabel * alertLabel;
@property UITextField *alertTextField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *logoLabel;

@end
