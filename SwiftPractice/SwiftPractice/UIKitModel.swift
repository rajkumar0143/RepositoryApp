//
//  UIKitModel.swift
//  Test
//
//  Created by apple on 15/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

final class UIKitModel {
    
    
    var name = ["iPhone user", "iPad user", "Mac Book Pro", "Mac Book Air"]
    var picture = [#imageLiteral(resourceName: "user"),#imageLiteral(resourceName: "Apple-512"),#imageLiteral(resourceName: "IMG_2723"),#imageLiteral(resourceName: "user")]
    var content = ["This is what customers pay us for - to sweat all these details so it's easy and pleasant for them to use our computers. We're supposed to be really good at this. That doesn't mean we don't listen to customers, but it's hard for them to tell you what they want when they've never seen anything remotely like it.", "Technology is nothing. What's important is that you have a faith in people, that they're basically good and smart, and if you give them tools, they'll do wonderful things with them.", "Pretty much, Apple and Dell are the only ones in this industry making money. They make it by being Wal-Mart. We make it by innovation.", "Pretty much, Apple and Dell are the only ones in this industry making money. They make it by being Wal-Mart. We make it by innovation."]
    
    
    
    ///MARK: - UITable view setup
    let customTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        table.tableFooterView = UIView()
        return table
    }()
    
    
    
    ///MARK: - UIview One setup 
    let uiViewOne: UIView = {
        let uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.backgroundColor = #colorLiteral(red: 0.3087850213, green: 0.5050420761, blue: 0.7417281866, alpha: 1)
        uiView.layer.cornerRadius = 8.0
        uiView.clipsToBounds = true
        return uiView
    }()
    

    ///MARK: - UIview two setup
    let uiViewTwo: UIView = {
        let uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.backgroundColor = #colorLiteral(red: 0.5019607843, green: 0.3936890364, blue: 0.6338234544, alpha: 1)
        uiView.layer.cornerRadius = 8.0
        uiView.clipsToBounds = true
        return uiView
    }()
    
    ///MARK: - Make Circle image one setup
    let circleImageOne: CircleImage = {
        let cornerRadiousImage = CircleImage()
        cornerRadiousImage.translatesAutoresizingMaskIntoConstraints = false
        cornerRadiousImage.contentMode = .scaleAspectFill
        cornerRadiousImage.image = #imageLiteral(resourceName: "user")
        return cornerRadiousImage
    }()
    
    
        ///MARK: - Text view one setup
        let typeTextViewOne: UITextView = {
            let textView = UITextView()
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.font = UIFont.preferredFont(forTextStyle: .headline)
            textView.text = "Type address here..."
            textView.textColor = UIColor.lightGray
            textView.backgroundColor = #colorLiteral(red: 0.5019607843, green: 0.3936890364, blue: 0.6338234544, alpha: 1)
            textView.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            textView.textAlignment = .center
            textView.textContainerInset = UIEdgeInsets(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0)
            textView.isScrollEnabled = false
            textView.isUserInteractionEnabled = false
            textView.layer.cornerRadius = 4.0
            textView.clipsToBounds = true
            return textView
        }()

    
    
    ///MARK: - UILabel one setup
    let titleLabelOne: UILabel = {
        let titleLbl = edgeInset()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.textAlignment = .center
        titleLbl.backgroundColor = #colorLiteral(red: 0.609131813, green: 0.7345194817, blue: 0.3504815102, alpha: 1)
        titleLbl.text = "iPhone user name"
        titleLbl.layer.cornerRadius = 4.0
        titleLbl.clipsToBounds = true
        return titleLbl
    }()

    ///MARK: - UILabel one setup
    let titleLabelTwo: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.textAlignment = .center
        titleLbl.backgroundColor = #colorLiteral(red: 0.5019607843, green: 0.3936890364, blue: 0.6338234544, alpha: 1)
        titleLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        titleLbl.numberOfLines = 0
        titleLbl.layer.cornerRadius = 4.0
        titleLbl.clipsToBounds = true
        return titleLbl
    }()
    
    
    
    ///MARK: - UIScroll View setup
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.alwaysBounceVertical = true
        return scroll
    }()
    
}




///MARK: - Circle image
final class CircleImage: UIImageView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 50.0
        self.clipsToBounds = true
    }
}



///MARK:- UIlable edge setup
class edgeInset: UILabel {
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: UIEdgeInsets(top: 1.5, left: 4.0, bottom: 1.5, right: 4.0)))
    }
}
