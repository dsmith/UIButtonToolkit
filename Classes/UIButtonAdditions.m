//
//  UIButtonAdditions.m
//  UIButtonToolkit
//
//  Created by dsmith on 1/30/11.
//  Copyright 2011 CrashCorp. All rights reserved.
//

#import "UIButtonAdditions.h"

@interface UIButton (CrashCorp_Private)

+ (UIButton*) _button:(UIImage*)image;

@end

@implementation UIButton (CrashCorp)

+ (UIButton*) blackButton
{
	return [UIButton _button:[UIImage imageNamed:@"BlackButton.png"]];
}

+ (UIButton*) whiteButton
{
	return [UIButton _button:[UIImage imageNamed:@"WhiteButton.png"]];
}

+ (UIButton*) redButton
{
	return [UIButton _button:[UIImage imageNamed:@"RedButton.png"]];
}

+ (UIButton*) blueButton
{
	return [UIButton _button:[UIImage imageNamed:@"BlueButton.png"]];
}

+ (UIButton*) greenButton
{
	return [UIButton _button:[UIImage imageNamed:@"GreenButton.png"]];
}

+ (UIButton*) _button:(UIImage*)image
{
    if(!image)
		    NSLog(@"Unable to find image. Either the image hasn't been added to the project or it hasn't been created yet.");
    else
        image = [image stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];

	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.titleLabel.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
  button.frame = CGRectMake(0.0, 0.0, 300.0, 46.0);
	button.titleLabel.shadowOffset = CGSizeMake(0, 1);
	
	return button;
}

@end
