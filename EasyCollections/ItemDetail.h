//
//  ItemDetail.h
//  EasyCollections
//
//  Created by Shoaib Ahmed Qureshi on 9/23/17.
//  Copyright © 2017 Shoaib Ahmed Qureshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemDetail : NSObject

@property(nonatomic,strong) NSString* feedId;
@property(nonatomic,strong) NSData* pictureData;
@property(nonatomic,strong) NSURL* feedImage;
@property(nonatomic,strong) NSURL* thumbImage;
@property(nonatomic,strong) NSString* userId;
@property(nonatomic,strong) NSString* userName;
@property(nonatomic,strong) NSURL* userPic;
@property(nonatomic,strong) NSURL* userThumbPic;
@property(nonatomic,strong) NSString* categoryName;
@property(nonatomic,strong) NSNumber* categoryId;
@property(nonatomic,strong) NSString* selfieDescription;
@property(nonatomic,strong) NSString* address;
@property(nonatomic,strong) NSMutableArray* taggedFriendsArr;
@property(nonatomic,strong) NSString* friendsId;
@property(nonatomic,strong) NSNumber* privacyStatus;
@property(nonatomic,strong) NSString* selfieDate;
@property(nonatomic,strong) NSString* commentsCount;
@property(nonatomic,strong) NSString* likesCount;
@property(nonatomic,strong) NSNumber* isLiked;

@end
