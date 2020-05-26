//
//  MainViewController.m
//  MyBookstore
//
//  Created by TEJAS MEHTA on 5/25/20.
//  Copyright © 2020 TEJAS MEHTA. All rights reserved.
//

#import "MainViewController.h"
#import "Bookstore.h"
#import "Book.h"
#import "BookDetailViewController.h"

@interface MainViewController ()
@property (nonatomic) Bookstore *theBookstore;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.theBookstore = [Bookstore new];
    self.title = @"My Bookstore";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.theBookstore.numberOfBooks;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"BookTitleRow"];
    Book *book = self.theBookstore.books[indexPath.row];
    cell.textLabel.text = book.title;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"BookDetailsSegue"]) {
        BookDetailViewController *detailViewController = segue.destinationViewController;
        [detailViewController view];
        NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
        
        Book *selectedBook = self.theBookstore.books[selectedRow.row];
        
        detailViewController.bookTitle.text = selectedBook.title;
        detailViewController.bookAuthor.text = selectedBook.author;
        detailViewController.bookInfo.text = selectedBook.bookDescription;
        
        detailViewController.bookInfo.numberOfLines = 0;
    }
}

@end
