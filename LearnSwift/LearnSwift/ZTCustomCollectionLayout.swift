//
//  ZTCustomCollectionLayout.swift
//  LearnSwift
//
//  Created by 张挺 on 2018/2/7.
//  Copyright © 2018年 张挺. All rights reserved.
//

import UIKit

class ZTCustomCollectionLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let data = super.layoutAttributesForElements(in: rect)
        let centerX = (self.collectionView?.contentOffset.x)!+self.sectionInset.left+self.itemSize.width*0.5
        
        for item in data! {
            print(item)
        }
        return data
    }
    
    override init() {
        super.init()
        self.itemSize = CGSize.init(width: 100, height: 100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.itemSize = CGSize.init(width: 100, height: 100)
    }
    
    override func prepare() {
        super.prepare()
        self.sectionInset = UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }
}
