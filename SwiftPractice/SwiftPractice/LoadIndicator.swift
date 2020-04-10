//
//  LoadIndicator.swift
//  JaiiHo
//
//  Created by URMILA on 06/02/20.
//  Copyright © 2020 trovend. All rights reserved.
//

import UIKit

class LoadIndicator: NSObject {
    
    private var indicatorFooter:UIActivityIndicatorView!
    
    func setLoadIndicator(tableview: UITableView)
    {
        indicatorFooter = UIActivityIndicatorView(frame: CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(tableview.frame.width), height: CGFloat(44)))
        indicatorFooter.color = UIColor.black
        indicatorFooter.startAnimating()
        tableview.tableFooterView = indicatorFooter
    }
    
    func removeLoadIndicator(tableview: UITableView){
        tableview.tableFooterView = nil;
    }
    
    func setLoadClcnIndicator(collectionView: UICollectionView)
    {
        indicatorFooter = UIActivityIndicatorView(frame: CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(collectionView.frame.width), height: CGFloat(44)))
        indicatorFooter.color = UIColor.black
        indicatorFooter.startAnimating()
//        collectionView.
    }
    
    func removeLoadClcnIndicator(collectionView: UICollectionView){
//        collectionView.tableFooterView = nil;
    }

}
