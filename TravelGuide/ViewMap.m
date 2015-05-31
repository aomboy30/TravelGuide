//
//  DisplayMap.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/19/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "ViewMap.h"
#import "DetialMap.h"

@interface ViewMap ()

@end

@implementation ViewMap

@synthesize myMap;

-(void)viewDidLoad

{
   [super viewDidLoad];
    
    DetialMap *delMap = [[DetialMap alloc]init];
    [delMap showMap];
    
        [myMap setMapType:MKMapTypeStandard];
        [myMap setZoomEnabled:YES];
        [myMap setScrollEnabled:YES];
    
        MKCoordinateRegion region = {{0.0, 0.0}, {0.0, 0.0}};
        region.center.latitude = 8.012465;
        region.center.longitude = 98.837234;
        region.span.longitudeDelta = 0.01f;
        region.span.latitudeDelta = 0.01f;
    
        [myMap setRegion:region animated:YES];
        [myMap setDelegate:self];
        delMap.coordinate = region.center;
        [myMap addAnnotation:delMap]; // ทะเลแหวก
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

