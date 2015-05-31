//
//  MyCustomCell.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TravelCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *cellThumb;
@property (strong, nonatomic) IBOutlet UILabel *cellTitle;
@property (strong, nonatomic) IBOutlet UILabel *cellDestion;

@end
