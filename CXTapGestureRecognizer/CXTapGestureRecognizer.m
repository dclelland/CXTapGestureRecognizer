//
//  CXTapGestureRecognizer.m
//  CALX
//
//  Created by Daniel Clelland on 10/01/15.
//  Copyright (c) 2015 Daniel Clelland. All rights reserved.
//

#import "CXTapGestureRecognizer.h"

@interface CXTapGestureRecognizer ()

- (void)onTap:(CXTapGestureRecognizer *)gestureRecognizer;

@end

@implementation CXTapGestureRecognizer

- (instancetype)init
{
    self = [super initWithTarget:self action:@selector(onTap:)];
    if (self) {
        self.minimumPressDuration = 0.0f;
    }
    return self;
}

#pragma mark - Actions

- (void)onTap:(CXTapGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
        case UIGestureRecognizerStateBegan: {
            if ([gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerDidStart:)]) {
                [gestureRecognizer.delegate tapGestureRecognizerDidStart:gestureRecognizer];
            }
            break;
        }
        case UIGestureRecognizerStateChanged: {
            if ([gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerDidUpdate:)]) {
                [gestureRecognizer.delegate tapGestureRecognizerDidUpdate:gestureRecognizer];
            }
            break;
        }
        case UIGestureRecognizerStateCancelled: {
            if ([gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerDidCancel:)]) {
                [gestureRecognizer.delegate tapGestureRecognizerDidCancel:gestureRecognizer];
            }
            break;
        }
        case UIGestureRecognizerStateEnded: {
            if ([gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerShouldCancel:)]
                && [gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerDidCancel:)]
                && [gestureRecognizer.delegate tapGestureRecognizerShouldCancel:self]) {
                [gestureRecognizer.delegate tapGestureRecognizerDidCancel:gestureRecognizer];
            } else if ([gestureRecognizer.delegate respondsToSelector:@selector(tapGestureRecognizerDidFinish:)]) {
                [gestureRecognizer.delegate tapGestureRecognizerDidFinish:gestureRecognizer];
            }
            break;
        }
        default:
            break;
    }
}

@end
