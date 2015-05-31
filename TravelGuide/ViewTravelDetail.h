//
//  DetailViewController.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewTravelDetail : UIViewController

@property (strong,nonatomic)NSString *selectedItem;
@property (strong,nonatomic)NSString *selectedWeb;

@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UIWebView *detailWeb;

@end
