//
//  catalogOptionTwo.h
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface catalogOptionTwo : UIViewController



//Outlets

@property (weak, nonatomic) IBOutlet UIImageView *logo;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (weak, nonatomic) IBOutlet UIView *view;




@property(strong,nonatomic)UIColor * BackgroundColor;
@property(strong,nonatomic)UIColor * LabelTextColor;
@property(strong,nonatomic)UIColor * LabelBackgroundColor;
@property(strong,nonatomic)UIColor * cellTextColor;
@property(strong,nonatomic)UIColor * cellPriceTextColor;
@property(strong,nonatomic)UIColor * collectionViewBackgroundColor;
@property(strong,nonatomic)NSString* LabelText;
@property(strong,nonatomic)UIColor * categoryLabelBackgroundColor;
@property(strong,nonatomic)UIColor * categoryLabelTextColor;
// Propiedades especificas para catalogos con una categoria

@property(strong,nonatomic)NSString* categoryLabelText;

//Variables de Productos
@property(strong,nonatomic)NSString* itemDescriptionState;
@property(strong,nonatomic)NSString* ratingState;
@property(strong,nonatomic)NSString* priceButtonState;
@property(strong,nonatomic)NSString* ExtraImagesStates;



@end
