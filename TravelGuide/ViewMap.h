//
//  DisplayMap.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/19/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewMap :UIViewController <MKMapViewDelegate>{

    IBOutlet MKMapView *myMap;
}

@property (retain, nonatomic) IBOutlet MKMapView *myMap;

@end
