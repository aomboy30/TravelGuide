//
//  TravelData.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/19/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "TravelData.h"

@implementation TravelData

@synthesize category,des,thumbnails,detail;

-(void)showDataTravel {
    
    category = [[NSMutableArray alloc]init];
    [category addObject:@"ทะเลแหวก"];
    [category addObject:@"น้ำตกเจ็ดสาวน้อย"];
    [category addObject:@"ทุ่งทานตะวันเขาจีนแล"];
    [category addObject:@"Windsor Castle"];
    [category addObject:@"Millenium Park"];
    [category addObject:@"Eiffel Tower"];
    
    des = [[NSMutableArray alloc]init];
    [des addObject:@"Unseen Thailand จังหวัดกระบี่"];
    [des addObject:@"เป็นน้ำตกชั้นเตี้ยๆ จำนวน 7 ชั้น"];
    [des addObject:@"ทุ่งทานตะวันที่ใหญ่ที่สุดในประเทศไทย"];
    [des addObject:@"สร้างในสมัยพระมหาองค์ราชินี วิคตอเรีย"];
    [des addObject:@"สวนสาธารณะย่าน Central Loop "];
    [des addObject:@"หอคอยโครงสร้างเหล็กบน ชองป์เดอมารส์"];
    
    thumbnails = [[NSMutableArray alloc]init];
    [thumbnails addObject:@"sea.jpg"];
    [thumbnails addObject:@"namtok.jpg"];
    [thumbnails addObject:@"tantawan.jpg"];
    [thumbnails addObject:@"windor.jpeg"];
    [thumbnails addObject:@"millenium.jpg"];
    [thumbnails addObject:@"ifel.jpeg"];
    
    detail = [[NSMutableArray alloc]init];
    [detail addObject:@"http://www.thetrippacker.com/th/review/%E0%B8%97%E0%B8%B0%E0%B9%80%E0%B8%A5%E0%B9%81%E0%B8%AB%E0%B8%A7%E0%B8%81ThalayWak/2261"];
    [detail addObject:@"http://www.xn--72c5aba9c2a3b8a2m8ae.com/%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%95%E0%B8%81%E0%B9%80%E0%B8%88%E0%B9%87%E0%B8%94%E0%B8%AA%E0%B8%B2%E0%B8%A7%E0%B8%99%E0%B9%89%E0%B8%AD%E0%B8%A2/"];
    [detail addObject:@"http://www.paiduaykan.com/province/central/lopburi/sunflowerjeenlae.html"];
    
    [detail addObject:@"http://topicstock.pantip.com/rajdumnern/topicstock/2007/04/P5337036/P5337036.html"];
    [detail addObject:@"http://pantip.com/topic/30182853"];
    [detail addObject:@"http://pantip.com/topic/31502933"];

}

@end
