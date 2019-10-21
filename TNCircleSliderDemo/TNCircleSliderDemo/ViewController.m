//
//  ViewController.m
//  TNCircleSliderDemo
//
//  Created by TigerNong on 2019/10/21.
//  Copyright © 2019 TigerNong. All rights reserved.
//

#import "ViewController.h"
#import "TNCircleSlider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    TNCircleSlider *circleSlider = [[TNCircleSlider alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 300) / 2.0, (self.view.frame.size.height - 300) / 2.0, 300,180)];
    circleSlider.value = 0;
    circleSlider.backgroundColor = [UIColor clearColor];
//    circleSlider.startEngle = 5/4.0 * M_PI;
//    circleSlider.endEngle = 2 * M_PI - 1 / 4.0 * M_PI;
    circleSlider.gradient = YES;
    circleSlider.gradientColors = [NSArray arrayWithObjects:(id)[UIColor whiteColor].CGColor, (id)[UIColor redColor].CGColor, nil];
    circleSlider.thumbColor = [UIColor blueColor];
    
    [circleSlider addTarget:self
                     action:@selector(circleSliderTouchDown:)
           forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:circleSlider];
    
    
    TNCircleSlider *circleSlider2 = [[TNCircleSlider alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 300) / 2.0, (self.view.frame.size.height - 300) / 2.0 + 200, 300,180)];
    circleSlider2.value = 0.0;
    circleSlider2.clockwise = NO;
//    circleSlider2.startEngle = 3/4.0 * M_PI;
//    circleSlider2.endEngle =  1 / 4.0 * M_PI;
    circleSlider.backgroundColor = [UIColor clearColor];
    
    [circleSlider2 addTarget:self
                      action:@selector(circleSliderTouchDown2:)
            forControlEvents:UIControlEventTouchDown];
    [circleSlider2 addTarget:self
                      action:@selector(ccircleSliderValueChanging2:)
            forControlEvents:UIControlEventValueChanged];
    
    
    [circleSlider2 addTarget:self
                      action:@selector(circleSliderValueDidChanged2:)
            forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:circleSlider2];
}

- (void)circleSliderValueDidChanged2:(TNCircleSlider *)slider{
    NSLog(@"circleSliderValueDidChanged2:%lf",slider.value);
}

- (void)ccircleSliderValueChanging2:(TNCircleSlider *)slider{
    NSLog(@"slider.value:%lf",slider.value);
}

- (void)circleSliderTouchDown2:(TNCircleSlider *)slider{
    NSLog(@"valu:%lf",slider.value);
}

- (void)circleSliderTouchDown:(TNCircleSlider *)slider{
    NSLog(@"v:%lf",slider.value);
}


@end
