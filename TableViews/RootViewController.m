//
//  RootViewController.m
//  TableViews
//
//  Created by Rodrigo Maia on 10/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property(nonatomic, strong) NSArray *listagem1;
@property(nonatomic, strong) NSArray *listagem2;
@property(nonatomic, strong) NSArray *listagem3;

@end

@implementation RootViewController

@synthesize listagem1=_listagem1, 
            listagem2=_listagem2, 
            listagem3=_listagem3;


-(void) dealloc{
  [super dealloc];
  [_listagem1 release];
  [_listagem2 release];
  [_listagem3 release];
}

-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)tableView{
  return [[NSArray alloc] initWithObjects:@"Bebidas", @"Doces", @"Comidas", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 3;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section{
  
  switch (section) {
    case 0:
      return 3;
      break;
    case 1:
      return 4;
      break;
    case 2:
      return 2;
      break;
    default:
      break;
  }
  
  return 10;
}

- (UITableViewCell *) tableView:(UITableView *)tableView 
          cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Celula"];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Celula"] autorelease];
  }
  
  switch (indexPath.section) {
    case 0:
      cell.textLabel.text = [self.listagem1 objectAtIndex:indexPath.row];
      break;
    case 1:
      cell.textLabel.text = [self.listagem2 objectAtIndex:indexPath.row];
      break;
    case 2:
      cell.textLabel.text = [self.listagem3 objectAtIndex:indexPath.row];
      break;      
    default:
      break;
  }
  
  
  return cell;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.listagem1 = [[NSArray alloc] initWithObjects:@"Café", @"Cerveja", @"Cachaça", nil];
  self.listagem2 = [[NSArray alloc] initWithObjects:@"Chocolate", @"Doce de leite", @"Garapa", @"Açucar", nil];
  self.listagem3 = [[NSArray alloc] initWithObjects:@"Churrasco", @"Peixe", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
