/**
 * Copyright (c) 2016-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "IGListCollectionView.h"

@implementation IGListCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        self.backgroundColor = [UIColor whiteColor];
        self.alwaysBounceVertical = YES;
    }
    return self;
}

- (void)layoutSubviews {
    /**
     UICollectionView will sometimes lay its cells out with an animation. This is especially noticeable on older devices
     while scrolling quickly. The simplest fix is to just disable animations for -layoutSubviews, which is where cells
     and other views inside the UICollectionView are laid out.
     */
    [UIView performWithoutAnimation:^{
        [super layoutSubviews];
    }];
}

@end
