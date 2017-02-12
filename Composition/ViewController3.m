//
//  ViewController3.m
//  Composition
//
//  Created by Derrick Ho on 2/12/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

#import "ViewController3.h"
#import "Composition-Swift.h"

@implementation ViewController3

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[_customizerObject customizeView:self.view];
	[_customizerObject customizeViewController:self];
}

@end

@implementation ViewController3Customizer

- (void)customizeView:(UIView *)view {
	[view setBackgroundColor:[UIColor greenColor]];
}

- (void)customizeViewController:(UIViewController *)viewController {
	
}

@end
