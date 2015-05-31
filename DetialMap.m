//
//  DetialMap.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/16/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "DetialMap.h"
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>

@implementation DetialMap

@synthesize coordinate,subtitle,title,arrMapTitle,arrMapSub;

@synthesize nMapLat,nMapLon;

-(void)showMap {
    
    [self showMapLatitube];
    [self showMapLongtitube];
    [self showMapTitle];
    [self showMapSubTitle];
}

-(void)showMapLatitube {
    
    arrMapLat = @[@14.863024];
    
    for (nMapLat in arrMapLat) {
        
        NSLog(@"nMapLat %@ : ",nMapLat);
    }
}

-(void)showMapLongtitube {
    
    arrMapLong = @[@101.05501400000001];
    
    for (nMapLon in arrMapLong) {
        
        NSLog(@"nMapLon %@ : ",nMapLon);
    }
}

-(void)showMapTitle {
    
    arrMapTitle = [[NSArray alloc]initWithObjects:@"ทะเลแหวก จ.กระบี่",
                   nil];
    
    for (int i = 0; i< [arrMapTitle count]; i++){
        
        NSLog(@"arrayTitle %d is %@",i,[arrMapTitle objectAtIndex:i]);
        title = [arrMapTitle objectAtIndex:i];
    }
}

-(void)showMapSubTitle {
    
    arrMapSub = [[NSArray alloc]initWithObjects:@"Unseen Thailand",
                 nil];
    
    for (int i = 0; i< [arrMapSub count]; i++){
        
        NSLog(@"arraysub %d is %@",i,[arrMapSub objectAtIndex:i]);
        subtitle = [arrMapSub objectAtIndex:i];
    }
}

@end
