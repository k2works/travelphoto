//
//  TPLeftMenuController.m
//  travelphoto
//
//  Created by Kakigi Katuyuki on 2014/11/24.
//  Copyright (c) 2014年 Kakigi Katuyuki. All rights reserved.
//

#import "TPLeftMenuController.h"

@interface TPLeftMenuController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray * menuList;
@property (nonatomic, strong) UITableView * tableView;

@end

@implementation TPLeftMenuController

- (void)viewDidLoad {
    //[super viewDidLoad];
    // Do any additional setup after loading the view.
  [self.view setBackgroundColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data setter
- (NSArray *)menuList
{
  if (!_menuList) {
    _menuList = @[@[@"マイページ",@"TPMyPageController"],
                  @[@"旅",@"TPTravelController"],
                  @[@"友達",@"TPFriendController"],
                  @[@"友達の旅",@"TPFriendTravelController"],
                  @[@"設定",@"TPSettingController"]];
  }
  return _menuList;
}

- (UITableView *)tableView
{
  if (!_tableView) {
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor darkGrayColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  }
  return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return self.menuList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
  // Cofigure the cell...
  cell.textLabel.textColor = [UIColor whiteColor];
  cell.textLabel.textColor = self.menuList[indexPath.row][0];
  return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
