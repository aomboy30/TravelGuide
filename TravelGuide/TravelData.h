//
//  TravelData.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/19/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TravelData : NSObject{
    
    NSMutableArray *category,*des,*thumbnails,*detail;
}

@property (nonatomic,strong)NSMutableArray *category,*des,*thumbnails,*detail;

-(void)showDataTravel;

@end
