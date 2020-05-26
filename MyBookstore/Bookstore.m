//
//  Bookstore.m
//  MyBookstore
//
//  Created by TEJAS MEHTA on 5/25/20.
//  Copyright © 2020 TEJAS MEHTA. All rights reserved.
//

#import "Bookstore.h"
#import "Book.h"

@implementation Bookstore

-(instancetype)init {
    self = [super init];
    if (self) {
        self.books = [NSMutableArray new];
        
        NSArray *arrayOfBooks = @[
            @{@"title": @"Objective-C for Absolute Beginners",
              @"author": @"Bennett, Fisher and Lees",
              @"description": @"iOS Programming made easy."},
            @{@"title": @"Tejas Confused",
              @"author": @"Your humble narrator",
              @"description": @"So you thought JS was crazy"}
        ];
        [self addBooks:arrayOfBooks];
    }
    return self;
}

-(void)addBooks:(NSArray *)bookArray
{
    for(NSDictionary *bookInfo in bookArray) {
        Book *newBook;
        
        newBook = [Book new];
        newBook.title = bookInfo[@"title"];
        newBook.author = bookInfo[@"author"];
        newBook.bookDescription = bookInfo[@"description"];
        
        [self.books addObject:newBook];
    }
}

-(NSInteger)numberOfBooks
{
    return self.books.count;
}

@end
