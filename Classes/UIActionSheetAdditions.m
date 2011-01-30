//
//  UIActionSheetAdditions.m
//  UIButtonToolkit
//  UIButtonToolkit
//
//  Created by dsmith on 1/30/11.
//  Copyright 2011 CrashCorp. All rights reserved.
//

#import "UIActionSheetAdditions.h"

#define FONT_SIZE			17.0

@implementation UIActionSheet (CrashCorp)

+ (UIButton*) blackActionSheetButton
{
	UIImage* image = [[UIImage imageNamed:@"ACBlackButton.png"]
					  stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];

	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) redActionSheetButton
{
	UIImage* image = [[UIImage imageNamed:@"ACRedButton.png"]
					  stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) blueActionSheetButton
{
	UIImage* image = [[UIImage imageNamed:@"ACBlueButton.png"]
					  stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) whiteActionSheetButton
{
	UIImage* image = [[UIImage imageNamed:@"ACWhiteButton.png"]
					  stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
}

+ (UIButton*) greenActionSheetButton
{
	UIImage* image = [[UIImage imageNamed:@"ACGreenButton.png"]
					  stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
	[button setTitleShadowOffset:CGSizeMake(0, 1)];
	
	return button;
	
}

@end
