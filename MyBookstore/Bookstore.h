//
//  Bookstore.h
//  MyBookstore
//
//  Created by TEJAS MEHTA on 5/25/20.
//  Copyright © 2020 TEJAS MEHTA. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bookstore : NSObject

@property (nonatomic, strong) NSMutableArray *books;

-(void)addBooks:(NSArray *)bookArray;
-(NSInteger)numberOfBooks;

@end

NS_ASSUME_NONNULL_END
