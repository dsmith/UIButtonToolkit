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

@interface UIActionSheet (CrashCorp_Private)

+ (UIButton*) _actionSheetButton:(UIImage*)image;

@end

@implementation UIActionSheet (CrashCorp)

+ (UIButton*) blackActionSheetButton
{
    return [UIActionSheet _actionSheetButton:[UIImage imageNamed:@"ACBlackButton.png"]];
}

+ (UIButton*) redActionSheetButton
{
    return [UIActionSheet _actionSheetButton:[UIImage imageNamed:@"ACRedButton.png"]];	
}

+ (UIButton*) blueActionSheetButton
{
    return [UIActionSheet _actionSheetButton:[UIImage imageNamed:@"ACBlueButton.png"]];
}

+ (UIButton*) whiteActionSheetButton
{
    return [UIActionSheet _actionSheetButton:[UIImage imageNamed:@"ACWhiteButton.png"]];
}

+ (UIButton*) greenActionSheetButton
{
    return [UIActionSheet _actionSheetButton:[UIImage imageNamed:@"ACGreenButton.png"]];
}

+ (UIButton*) _actionSheetButton:(UIImage*)image
{
    if(!image)
        NSLog(@"Unable to find image. Either the image hasn't been added to the project or it hasn't been created yet.");
    else
        image = [image stretchableImageWithLeftCapWidth:17.0 topCapHeight:0.0];

	UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.titleLabel.font = [UIFont boldSystemFontOfSize:FONT_SIZE];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleShadowColor:[UIColor colorWithWhite:0 alpha:0.5]
					   forState:UIControlStateNormal];
    button.titleLabel.shadowOffset = CGSizeMake(0, 1);
	
	return button;
}

@end
