//
//  Book.m
//  MyBookstore
//
//  Created by TEJAS MEHTA on 5/25/20.
//  Copyright © 2020 TEJAS MEHTA. All rights reserved.
//

#import "Book.h"

@implementation Book
- (void)setTitle:(NSString *)newTitle
{
    if (newTitle.length > 20) {
        _title = [newTitle substringToIndex:20];
    } else {
        _title = newTitle;
    }
}
@end
