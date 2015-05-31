//
//  ViewController.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/16/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "ViewTravel.h"
#import "TravelCell.h"
#import "ViewTravelDetail.h"
#import "TravelData.h"

@interface ViewTravel ()

@end

@implementation ViewTravel

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { // นับจำนวน array
   
    TravelData *traData = [[TravelData alloc]init];
    [traData showDataTravel];
    
    return [traData.category count];
}

//นำข้อม฿ล item ใน array ใส่ใน Table View
-(UITableView *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TravelData *traData = [[TravelData alloc]init];
    [traData showDataTravel];
    
    static NSString *simpleTableIdentifier = @"MyCell";
    
    TravelCell *cell = (TravelCell *)[self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[TravelCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.cellTitle.text = [traData.category objectAtIndex:indexPath.row];
    cell.cellThumb.image = [UIImage imageNamed:[traData.thumbnails objectAtIndex:indexPath.row]];
    cell.cellDestion.text = [traData.des objectAtIndex:indexPath.row];
    
    return cell;
}
//ส่งข้อมูล Segue ที่แตะเลือกจาก Table View
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    TravelData *traData = [[TravelData alloc]init];
    [traData showDataTravel];
    
    if([segue.identifier isEqualToString:@"showDetail"]) { //มี Segue ชื่อ showDetail
        ViewTravelDetail *detailCtrl = segue.destinationViewController; //สร้างอินซแตนซ์ DetailViewController
        
        //index ที่เลือกบน Table View
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        //ส่งค่า Item
        detailCtrl.selectedWeb = [traData.detail objectAtIndex:indexPath.row];
        detailCtrl.selectedItem = [traData.category objectAtIndex:indexPath.row];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




























