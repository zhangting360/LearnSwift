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
        
        let section1:Int = (self.collectionView?.numberOfItems(inSection: 0))!
        var section1Ary:Array = [Any]()
        
        
        for index in 0..<section1 {
            section1Ary.append(self.layoutAttributesForItem(at: IndexPath.init(row: index, section: 0)) as Any)
        }
        
        
        for item in data! {
            if item.indexPath.section == 0{
                if !section1Ary.isEmpty {
                    for value in section1Ary as! [UICollectionViewLayoutAttributes]{
                        
                    }
                }
            }else{
                
            }
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
