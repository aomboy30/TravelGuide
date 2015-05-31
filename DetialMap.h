//
//  DetialMap.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/16/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <Foundation/Foundation.h> //NSObject
#import <MapKit/MKAnnotation.h>

@interface DetialMap : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate; //MKAnnotation.h
    
    NSArray *title,
            *subtitle,
            *arrMapTitle,
            *arrMapSub,
            *arrMapLat,
            *arrMapLong;
    
    NSNumber *nMapLat,
             *nMapLon;
    
    NSNumberFormatter *nfMapFormat;
}

@property (nonatomic,assign)CLLocationCoordinate2D coordinate;

@property (nonatomic,strong)NSArray *title,*subtitle,*arrMapTitle,*arrMapSub,*arrMapLat,*arrMapLong;

@property(nonatomic,strong)NSNumberFormatter *nfMapFormat;

@property(nonatomic,strong)NSNumber *nMapLat,*nMapLon;

-(void)showMap;

@end
