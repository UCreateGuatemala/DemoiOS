//
//  modificaLogoSlogan.m
//  UCreate Demo
//
//  Created by AKBAL34 on 6/9/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "modificaLogoSlogan.h"

@interface modificaLogoSlogan ()

@end

@implementation modificaLogoSlogan
@synthesize imageView;
@synthesize logoLabel;
@synthesize alertLabel;
@synthesize alertTextField;

-(void) viewDidAppear:(BOOL)animated{
    
    self.tabBarController.tabBar.hidden=YES;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)alertAction{
    
    NSLog(@"SI ENTRO A ALERTACTION");
    
    UIAlertView *testAlert  = [[UIAlertView alloc]initWithTitle:@"Test" message:@"Ingrese el nombre de su empresa" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aceptar", nil];
    testAlert.alertViewStyle= UIAlertViewStylePlainTextInput;
    alertTextField = [testAlert textFieldAtIndex:0];
    [alertTextField setPlaceholder:@"Ingresar Nombre"];
    alertTextField.keyboardType= UIKeyboardTypeAlphabet;
    alertTextField.clearsOnBeginEditing=YES;
    alertTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    alertTextField.keyboardAppearance= UIKeyboardAppearanceAlert;
    
    [testAlert show];
    
    
    
    
}

-(void)alertView:(UIAlertView*) alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSString * buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Aceptar"]) {
        alertLabel.text = alertTextField.text;
    }
}





- (IBAction)drag:(UIPanGestureRecognizer *)recognizer{
    
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0.0,0.0) inView:self.view];
    
}

- (IBAction)handlePinch:(UIPinchGestureRecognizer*)sender {
    NSLog(@"Pinched");
    
    CGFloat lastScaleFactor=1;
    CGFloat factor = [(UIPinchGestureRecognizer *) sender scale];
    
    if (factor>1) {
        imageView.transform= CGAffineTransformMakeScale(
                                                        
        lastScaleFactor+ (factor - 1),
        lastScaleFactor +(factor -1));
    }
    else
    {
        
        imageView.transform= CGAffineTransformMakeScale(
                                                        
        lastScaleFactor*factor,
        lastScaleFactor*factor);
        
    }
    
    
    if (sender.state== UIGestureRecognizerStateEnded) {
        if (factor>1) {
            lastScaleFactor+= (factor-1);
        }
        else
            lastScaleFactor+= factor;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
