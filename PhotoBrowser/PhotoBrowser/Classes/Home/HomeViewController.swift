//
//  HomeViewController.swift
//  PhotoBrowser
//
//  Created by 李先生 on 16/4/28.
//  Copyright © 2016年 MaYuan. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomeViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let cols : CGFloat = 3
        let margin : CGFloat = 10

        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        let itemWH = (UIScreen.mainScreen().bounds.width - (cols + 1)) / cols
        collectionViewFlowLayout.minimumInteritemSpacing = margin
        collectionViewFlowLayout.minimumLineSpacing = margin
        collectionViewFlowLayout.itemSize = CGSize(width: itemWH, height: itemWH)


        
    }

}

extension HomeViewController {
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //1.创建cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("HomeCell", forIndexPath: indexPath)
        
        //2.设置cell的背景色
        cell.backgroundColor = UIColor.redColor()
        
        return cell
    }
    
}