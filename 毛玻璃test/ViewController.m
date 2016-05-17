//
//  ViewController.m
//  毛玻璃test
//
//  Created by dj on 16/3/23.
//  Copyright © 2016年 dj. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

#define ScrWidth self.view.frame.size.width
#define ScrHeight self.view.frame.size.height

@interface ViewController ()
{
    
}
@property (nonatomic ,strong) UIImageView *imgView;

@property (nonatomic ,strong) UIImageView *secImgView;

@property (nonatomic ,strong) UIButton *aniBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.view addSubview:self.imgView];
//    [self.view addSubview:self.aniBtn];
    
    [self CrearFirst];
    
//    [self setAnimation];
    
//    [self createSecond];
}

-(UIButton *)aniBtn
{
    if (_aniBtn  == nil) {
        _aniBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _aniBtn.frame = CGRectMake(20, 100, 80, 40);
        _aniBtn.backgroundColor = [UIColor redColor];
        [_aniBtn setTitle:@"开始" forState:UIControlStateNormal];
        [_aniBtn addTarget:self action:@selector(setAnimation) forControlEvents:UIControlEventTouchUpInside];
    }
     return _aniBtn;
}

- (UIImageView *)secImgView
{
    if (_secImgView == nil)
    {
        _secImgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, ScrWidth, 60)];
        _secImgView.image = [UIImage imageNamed:@"maoboli"];
        
        _secImgView.contentMode = UIViewContentModeScaleToFill;
    }

    return _secImgView;
}
-(UIImageView*)imgView
{
    if (_imgView == nil)
    {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, ScrWidth, ScrHeight-200)];
        _imgView.image = [UIImage imageNamed:@"maoboli"];
        
        _imgView.contentMode = UIViewContentModeScaleToFill;
    }
    
    return _imgView;
}


-(void)setAnimation
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    [UIView transitionFromView:_imgView toView:_secImgView duration:1.2 options:UIViewAnimationOptionTransitionCurlDown completion:^(BOOL finished) {
        
    }];
}



//第一种实现
-(void)CrearFirst
{
    UIToolbar *BarView = [[UIToolbar alloc] initWithFrame:_imgView.bounds];
    BarView.barStyle = UIBarStyleDefault;
    [_imgView addSubview:BarView];
}
//第二种实现
-(void)createSecond
{
    /*
     毛玻璃的样式(枚举)
     UIBlurEffectStyleExtraLight,
     UIBlurEffectStyleLight,
     UIBlurEffectStyleDark
     */
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.frame = CGRectMake(50, 50, _imgView.frame.size.width-50, _imgView.frame.size.height-50);
    [_imgView addSubview:effectView];
}

////图片模糊处理
//- (UIImage *)blurryImage:(UIImage *)image
//           withBlurLevel:(CGFloat)blur
//{
//    CIImage *inputImage = [CIImage imageWithCGImage:image.CGImage];
//    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"
//                                  keysAndValues:kCIInputImageKey, inputImage,
//                        @"inputRadius", @(blur)];
//                        
//    CIImage *outputImage = filter.outputImage;
//    CGImageRef outImage = [_imgView createCGImage:outputImage fromRect:[outputImage extent]];
//    return [UIImage imageWithCGImage:outImage];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
