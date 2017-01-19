//
//  M2SettingsViewController.m
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import "M2SettingsViewController.h"
#import "M2SettingsDetailViewController.h"

@interface M2SettingsViewController ()

@end


@implementation M2SettingsViewController {
  IBOutlet UITableView *_tableView;
  NSArray *_options;
  NSArray *_optionSelections;
  NSArray *_optionsNotes;
}


# pragma mark - Set up

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    [self commonInit];
  }
  return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder]) {
    [self commonInit];
  }
  return self;
}


- (void)commonInit
{
  _options = @[@"Game Type", @"Board Size", @"Theme"];
  
  _optionSelections = @[@[@"Powers of 2", @"Powers of 3", @"Fibonacci"],
                        @[@"3 x 3", @"4 x 4", @"5 x 5"],
                        @[@"Default", @"Vibrant", @"Joyful"]];
  
  _optionsNotes = @[@"Fibonacciゲームでは、タイルは1つ上のレベルまたは下にあるタイルで結合できますが、それに等しいものには結合できません。 Powers of 3の場合、マージをトリガするために同じ連続する3つのタイトルが必要です。",
                    @"ボードが小さいほど難しくなります！ 5 x 5ボードの場合、2の累乗をプレイしている場合は、2つのタイルが1ラウンドごとに追加されます。",
                    @"あなたのお気に入りの外観を選択し、2048の自分の気持ちを手に入れよう！より多くの（そしてより高品質の）テーマがありますので、定期的にチェックしてください！"];
}


- (void)viewDidLoad
{
  [super viewDidLoad];
  self.navigationController.navigationBar.tintColor = [GSTATE scoreBoardColor];
  // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  [_tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"Settings Detail Segue"]) {
    M2SettingsDetailViewController *sdvc = segue.destinationViewController;
    
    NSInteger index = [_tableView indexPathForSelectedRow].row;
    sdvc.title = [_options objectAtIndex:index];
    sdvc.options = [_optionSelections objectAtIndex:index];
    sdvc.footer = [_optionsNotes objectAtIndex:index];
  }
}

# pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return section ? 1 : _options.count;
}


- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
  if (section) return @"";
  return @"注意: 上記の設定を変更するとゲームが再開します.";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Settings Cell"];
  
  if (indexPath.section) {
    cell.textLabel.text = @"To Marie";
    cell.detailTextLabel.text = @"";
  } else {
    cell.textLabel.text = [_options objectAtIndex:indexPath.row];
    
    NSInteger index = [Settings integerForKey:[_options objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text = [[_optionSelections objectAtIndex:indexPath.row] objectAtIndex:index];
    cell.detailTextLabel.textColor = [GSTATE scoreBoardColor];
  }

  return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section) {
    [self performSegueWithIdentifier:@"About Segue" sender:nil];
  } else {
    [self performSegueWithIdentifier:@"Settings Detail Segue" sender:nil];
  }
}

@end
