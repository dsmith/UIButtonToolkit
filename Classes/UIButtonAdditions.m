//
//  UIButtonAdditions.m
//  UIButtonToolkit
//
//  Created by dsmith on 1/30/11.
//  Copyright 2011 CrashCorp. All rights reserved.
//

#import "UIButtonAdditions.h"


@implementation UIButton (CrashCorp)

+ (UIButton*) blackButton
{
	NSLog(@"Creating black button");
	
	UIImage* image = [[UIImage imageNamed:@"BlackButton.png"]
					  stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	if(!image)
		NSLog(@"Unable to find image");
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) whiteButton
{
	UIImage* image = [[UIImage imageNamed:@"WhiteButton.png"]
					  stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	
	if(!image)
		NSLog(@"Unable to find image");
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
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
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) greenButton
{
	return nil;	
}

@end
