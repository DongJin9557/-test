//
//  SecondViewController.m
//  毛玻璃test
//
//  Created by dj on 16/3/29.
//  Copyright © 2016年 dj. All rights reserved.
//

#import "SecondViewController.h"

#define ScrWidth self.view.frame.size.width
#define ScrHeight self.view.frame.size.height


@interface SecondViewController ()
{
    
}
@property (nonatomic ,strong) UIImageView *imgView;

@end


@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.imgView];
}

-(UIImageView*)imgView
{
    if (_imgView == nil)
    {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScrWidth, ScrHeight)];
        _imgView.image = [UIImage imageNamed:@"er"];
        
        _imgView.contentMode = UIViewContentModeScaleToFill;
    }
    
    return _imgView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
