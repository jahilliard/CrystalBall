//
//  ViewController.m
//  CrystalBall
//
//  Created by Justin Hilliard on 5/16/13.
//  Copyright (c) 2013 Justin Hilliard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",
                                @"It is decidedly so",
                                @"All signs say yes",
                                @"The Stars are not alligned",
                                @"My reply is no",
                                @"It is doubtful",
                                @"Concentrate and ask again",
                                @"Better not tell you now", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)makePrediction{

    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    self.predictionLabel.text = @"";
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (motion == UIEventSubtypeMotionShake) {
        self.makePrediction;
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"motion cancelled");
}

-(BOOL) canBecomeFirstResponder {
    return YES;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text = @"";
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    self.makePrediction;
}
@end
