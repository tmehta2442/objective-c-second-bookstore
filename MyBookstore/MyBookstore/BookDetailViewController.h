//
//  BookDetailViewController.h
//  MyBookstore
//
//  Created by TEJAS MEHTA on 5/25/20.
//  Copyright © 2020 TEJAS MEHTA. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BookDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *bookTitle;
@property (nonatomic, weak) IBOutlet UILabel *bookAuthor;
@property (nonatomic, weak) IBOutlet UILabel *bookInfo;

@end

NS_ASSUME_NONNULL_END
