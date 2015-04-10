//
//  CXTapGestureRecognizer.h
//  CALX
//
//  Created by Daniel Clelland on 10/01/15.
//  Copyright (c) 2015 Daniel Clelland. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CXTapGestureRecognizer;

@protocol CXTapGestureRecognizerDelegate <UIGestureRecognizerDelegate>

@optional

- (void)tapGestureRecognizerDidStart:(CXTapGestureRecognizer *)gestureRecognizer;
- (void)tapGestureRecognizerDidUpdate:(CXTapGestureRecognizer *)gestureRecognizer;
- (void)tapGestureRecognizerDidCancel:(CXTapGestureRecognizer *)gestureRecognizer;
- (void)tapGestureRecognizerDidFinish:(CXTapGestureRecognizer *)gestureRecognizer;

- (BOOL)tapGestureRecognizerShouldCancel:(CXTapGestureRecognizer *)gestureRecognizer;

@end

@interface CXTapGestureRecognizer : UILongPressGestureRecognizer

@property (nonatomic, assign) id <CXTapGestureRecognizerDelegate> delegate;

@end
