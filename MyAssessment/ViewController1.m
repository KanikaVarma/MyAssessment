//
//  ViewController1.m
//  MyAssessment
//
//  Created by Kanika Varma on 26/04/2015.
//  Copyright (c) 2015 Kanika Varma. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
@interface ViewController1 ()

@property(nonatomic, strong) UILabel* blueLabel;
@property(nonatomic, strong) UILabel* redLabel;
@property(nonatomic, strong) UILabel* greenLabel;

@property(nonatomic, strong) UIButton* blueButton;
@property(nonatomic, strong) UIButton* redButton;
@property(nonatomic, strong) UIButton* greenButton;

@end

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

@implementation ViewController1

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#pragma mark - Life Cycle

///////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self initViews];
}

///////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////////////////////////////////////////////////////
-(void)initViews{
    self.blueLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+200, 100, 70)];
    [self.blueLabel setText:@"blue"];
    [self initLabels:self.blueLabel];
    
    self.redLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+300, 100, 70)];
    [self.redLabel setText:@"red"];
    [self initLabels:self.redLabel];
    
    self.greenLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+100, self.view.frame.origin.y+400, 100, 70)];
    [self.greenLabel setText:@"green"];
    [self initLabels:self.greenLabel];
    
    self.noneLabel=[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+120, self.view.frame.origin.y+500, 200, 70)];
    [self.noneLabel setText:@"None"];
    [self initLabels:self.noneLabel];
    
    self.blueButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+200, 100, 60)];
    [self initButtons:self.blueButton];
    
    self.redButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+300, 100, 60)];
    [self initButtons:self.redButton];
    
    self.greenButton=[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+200, self.view.frame.origin.y+400, 100, 60)];
    [self initButtons:self.greenButton];
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
    [button setTitle:@"go" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:button];
}

///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#pragma mark - IBActions
///////////////////////////////////////////////////////////////
-(IBAction)buttonPressed:(id)sender{
    ViewController2* viewController2=[[ViewController2 alloc] init];
    
    if (sender==self.blueButton) {
        [viewController2.view setBackgroundColor:[UIColor blueColor]];
        [viewController2 setTag:1];
    }
    if (sender==self.redButton) {
        [viewController2.view setBackgroundColor:[UIColor redColor]];
        [viewController2 setTag:2];
    }
    if (sender==self.greenButton) {
        [viewController2.view setBackgroundColor:[UIColor greenColor]];
        [viewController2 setTag:3];
    }
    [viewController2 updateLabels];
    [self.navigationController pushViewController:viewController2 animated:YES];
}

@end
