//
//  UIButtonAdditions.m
//  UIButtonToolkit
//
//  Created by dsmith on 1/30/11.
//  Copyright 2011 CrashCorp. All rights reserved.
//

#import "UIButtonAdditions.h"

@interface UIButton (Private)

+ (UIButton*) _buttonWithImage:(UIImage*)image;

@end


@implementation UIButton (CrashCorp)

+ (UIButton*) blackButton
{
	NSLog(@"Creating black button");
	
	UIImage* image = [[UIImage imageNamed:@"BlackButton.png"]
					  stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	if(!image)
		NSLog(@"Unable to find image");

    return [UIButton _buttonWithImage:image];
}

+ (UIButton*) whiteButton
{
	UIImage* image = [[UIImage imageNamed:@"WhiteButton.png"]
					  stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	
	if(!image)
		NSLog(@"Unable to find image");

    return [UIButton _buttonWithImage:image];
}


+ (UIButton*) redButton
{
	return nil;
}

+ (UIButton*) blueButton
{
	UIImage* image = [[UIImage imageNamed:@"BlueButton.png"]
					  stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	
	if(!image)
		NSLog(@"Unable to find image");
	
    return [UIButton _buttonWithImage:image];
}

+ (UIButton*) greenButton
{
	return nil;	
}

+ (UIButton*) _buttonWithImage:(UIImage*)image
{
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button.titleLabel setShadowOffset:CGSizeMake(0, 1)];
    button.frame = CGRectMake(0.0, 0.0, 300.0, 46.0);
	return button;    
}

@end
