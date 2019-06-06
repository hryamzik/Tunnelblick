//
//  TBChallengeTextView.m
//  Tunnelblick
//
//  Created by Roman Belyakovsky on 06/06/2019.
//

#import "TBChallengeTextView.h"

@implementation TBChallengeTextView

- (void)flagsChanged:(NSEvent *)theEvent {
    if ([theEvent modifierFlags] & NSEventModifierFlagOption) {
        if (_secretButton == nil) {
            _secretButton = [_alert addButtonWithTitle:NSLocalizedString(@"Secret", @"Button")];
            [_alert layout];
        } else {
            _secretButton.hidden = NO;
        }
    } else if ([theEvent modifierFlags] | NSEventModifierFlagOption) {
        if (_secretButton != nil) {
            _secretButton.hidden = YES;
        }
    }
}

-(void) dealloc {
    [_secretButton release]; _secretButton = nil;
    [_alert release];        _alert = nil;
    [super dealloc];
}

@end

@implementation TBChallengeSecureTextView

- (void)flagsChanged:(NSEvent *)theEvent {
    if ([theEvent modifierFlags] & NSEventModifierFlagOption) {
        if (_secretButton == nil) {
            _secretButton = [_alert addButtonWithTitle:NSLocalizedString(@"Secret", @"Button")];
            [_alert layout];
        } else {
            _secretButton.hidden = NO;
        }
    } else if ([theEvent modifierFlags] | NSEventModifierFlagOption) {
        if (_secretButton != nil) {
            _secretButton.hidden = YES;
        }
    }
}

-(void) dealloc {
    [_secretButton release]; _secretButton = nil;
    [_alert release];        _alert = nil;
    [super dealloc];
}

@end
