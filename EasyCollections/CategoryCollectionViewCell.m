//
//  CategoryCollectionViewCell.m
//  StrictlySelfies
//
//  Created by Ali Akbar on 08/10/2015.
//  Copyright (c) 2015 Ali Akbar. All rights reserved.
//

#import "CategoryCollectionViewCell.h"
#import <UIImageView+AFNetworking.h>
#import "UtilitiesHelper.h"

@implementation CategoryCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setData:(ItemDetail*)feed{
//    [_feedImage setImageWithURL:feed.thumbImage placeholderImage:[UIImage imageNamed:@"feed_detail_large"]];
    [UtilitiesHelper addActivityIndicatorToView:_feedImage];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:feed.thumbImage];
    [request addValue:@"image/*" forHTTPHeaderField:@"Accept"];
    
    [_feedImage setImageWithURLRequest:request placeholderImage:[UIImage imageNamed:@"feed_detail_large"] success:^(NSURLRequest * request, NSHTTPURLResponse * response, UIImage * image) {
        [_feedImage setImage:image];
        [UtilitiesHelper removeActivityIndicatorToView:_feedImage];
        
    } failure:^(NSURLRequest * request, NSHTTPURLResponse * response, NSError * error) {
        
        [UtilitiesHelper removeActivityIndicatorToView:_feedImage];
        
    }];

}

@end
