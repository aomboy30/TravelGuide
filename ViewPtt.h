//
//  DisplayWebserivce.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/28/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewPtt :UIViewController

@property (strong,nonatomic)NSArray* aWebservice;
@property (strong, nonatomic) IBOutlet UILabel *lDatePtt; 
@property (strong, nonatomic) IBOutlet UILabel *lDeselPtt;
@property (strong, nonatomic) IBOutlet UILabel *lE20Ptt;
@property (strong, nonatomic) IBOutlet UILabel *lE85Ptt;
@property (strong, nonatomic) IBOutlet UILabel *lHol91Ptt;
@property (strong, nonatomic) IBOutlet UILabel *lHol95Ptt;

@property (strong, nonatomic) IBOutlet UILabel *lLine95Ptt;

-(void)callWebserice;
-(void)handleResponseData:(NSData *)_responseData;

@end
