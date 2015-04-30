//
//  ViewController2.m
//  MyAssessment
//
//  Created by Kanika Varma on 26/04/2015.
//  Copyright (c) 2015 Kanika Varma. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController1.h"
#import "ViewController3.h"

#define buttonTitle @"go"

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
@interface ViewController2 ()

@property(nonatomic, strong) UILabel* numberLabel;

@property(nonatomic, strong) UILabel* oneLabel;
@property(nonatomic, strong) UILabel* twoLabel;
@property(nonatomic, strong) UILabel* threeLabel;

@property(nonatomic, strong) UIButton* oneButton;
@property(nonatomic, strong) UIButton* twoButton;
@property(nonatomic, strong) UIButton* threeButton;

@property(nonatomic, strong) UIButton* goLastButton;

@end

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
@implementation ViewController2

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#pragma mark - Life Cycle

///////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initViews];
    
    UIBarButtonItem* backButton=[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleDone target:self action:@selector(handleBack:)];
    self.navigationItem.leftBarButtonItem = backButton;
}

///////////////////////////////////////////////////////////////
-(void)initViews{
    UILabel* fixedLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+90, self.view.frame.origin.y+100, 200, 70)];
    [fixedLabel setText:@"button pressed is "];
    [fixedLabel setLineBreakMode:NSLineBreakByTruncatingTail];
    [fixedLabel setNumberOfLines:1];
    [fixedLabel setTextAlignment:NSTextAlignmentLeft];
    [self.view addSubview:fixedLabel];
    
    self.numberLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+230, self.view.frame.origin.y+100, 100, 70)];
    [self initLabels:self.numberLabel];
    
    self.oneLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+200, 100, 70)];
    [self.oneLabel setText:@"ONE"];
    [self initLabels:self.oneLabel];
    
    self.twoLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+300, 100, 70)];
    [self.twoLabel setText:@"TWO"];
    [self initLabels:self.twoLabel];
    
    self.threeLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+400, 100, 70)];
    [self.threeLabel setText:@"THREE"];
    [self initLabels:self.threeLabel];

    
    self.oneButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+200, 100, 60)];
    [self.oneButton setTitle:buttonTitle forState:UIControlStateNormal];
    [self initButtons:self.oneButton];
    
    self.twoButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+300, 100, 60)];
    [self.twoButton setTitle:buttonTitle forState:UIControlStateNormal];
    [self initButtons:self.twoButton];
    
    self.threeButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+400, 100, 60)];
    [self.threeButton setTitle:buttonTitle forState:UIControlStateNormal];
    [self initButtons:self.threeButton];
    
    self.goLastButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+150, self.view.frame.origin.y+500, 100, 50)];
    [self.goLastButton setTitle:@"go last" forState:UIControlStateNormal];
    [self initButtons:self.goLastButton];
}

///////////////////////////////////////////////////////////////
-(void)initLabels:(UILabel*)label{
    [label setLineBreakMode:NSLineBreakByTruncatingTail];
    [label setNumberOfLines:1];
    [label setTextAlignment:NSTextAlignmentLeft];
    [self.view addSubview:label];
}

///////////////////////////////////////////////////////////////
-(void)initButtons:(UIButton*)button{
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:button];
}

///////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#pragma mark - IBActions

///////////////////////////////////////////////////////////////
-(IBAction)buttonPressed:(id)sender{
    NSArray* arrViewControllers=[self.navigationController viewControllers];
    ViewController1* viewController1=[arrViewControllers objectAtIndex:0];
    if ((UIButton*)sender==self.oneButton) {
        viewController1.noneLabel.text=@"button pressed is ONE";
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    if ((UIButton*)sender==self.twoButton) {
        viewController1.noneLabel.text=@"button pressed is TWO";
        [self.navigationController popToRootViewControllerAnimated:YES];
    
    }
    if ((UIButton*)sender==self.threeButton) {
        viewController1.noneLabel.text=@"button pressed is THREE";
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    if ((UIButton*)sender==self.goLastButton) {
        ViewController3* viewController3=[[ViewController3 alloc] init];
        [self.navigationController pushViewController:viewController3 animated:YES];
    }
}

///////////////////////////////////////////////////////////////
- (void) handleBack:(id)sender
{
    NSArray* arrViewControllers=[self.navigationController viewControllers];
    ViewController1* viewController1=[arrViewControllers objectAtIndex:0];
    viewController1.noneLabel.text=@"None";
    [self.navigationController popToRootViewControllerAnimated:YES];
}


///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#pragma mark - Custom Methods

///////////////////////////////////////////////////////////////
-(void)updateLabels{
    if (self.tag==1) {
        [self.numberLabel setText:@"1"];
    }if (self.tag==2){
        [self.numberLabel setText:@"2"];
    }if (self.tag==3){
        [self.numberLabel setText:@"3"];
    }
}

@end
