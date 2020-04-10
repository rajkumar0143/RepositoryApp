//
//  JHExtension.swift
//  JaiiHo
//
//  Created by apple on 09/07/19.
//  Copyright © 2019 trovend. All rights reserved.
//

import Foundation
import UIKit

// MARK:- View Gradient...
class JHView: UIView {
    override func didMoveToWindow() {
        self.layer.cornerRadius = self.frame.size.height/2
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.06
        self.layer.shadowColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowRadius = 5
    }
}


/// MARK: - View corners radious with line
class JHViewCornerrsRadiousWithLine: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 13.0
        self.clipsToBounds = true
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
}


// MARK:- View Corners and minimum radius...
class JHViewDefault: UIView{
    override func didMoveToWindow() {
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
}


// MARK: - View Default border color.....
class JHViewDefaultBordercolor: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 9.0
        self.clipsToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = JHColor.orange.cgColor
    }
}


// MARK:-  View Corner-Radius 50%........
class JHViewCorners: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }
}

// MARK:-  View Corner-Radius 50%........and border color
class JHViewBorderColor: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = JHColor.orange.cgColor
    }
}


// MARK:-  View Corner-Radius 12%........
class JHViewRadious: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 6
        self.clipsToBounds = true
    }
}


// MARK:-  View Corner-Radius  50%...
class JHViewCircle: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
        
    }
}



// MARK:-  View border line.....
class JHViewBorderLine: UIView{
    override func draw(_ rect: CGRect) {
        self.clipsToBounds = true
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        
    }
}


// MARK:-  View border line.....
class JHViewBorderOrangeLine: UIView{
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        self.layer.borderWidth = 0.7
        self.layer.borderColor = UIColor.orange.cgColor
        
    }
}


// MARK:-  View border line......
class ViewBorderLine: UIView{
    override func draw(_ rect: CGRect) {
        layer.borderWidth = 0.8
        layer.borderColor = UIColor.lightGray.cgColor
    }
}



//MARK: - Corner radious for UIView
class JHViewTopCorners: UIView {
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 16
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.clipsToBounds = true
    }
}


//MARK: - Profile set field enter view
class JHViewCornerWithBackgroundColor: UIView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}


//MARK: - Profile picture set shadow view
class JHProfileShadowView: UIView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = self.frame.size.height / 2
        layer.masksToBounds = true
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 10.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
}


/**
 JH set gradient Bakcground view for color combination for red and yellow
 */
class JHBackgroundGradientView: UIView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 4.0
        self.setGradientBackg(colorOne: UIColor(red: 253.0/255.0, green: 178.0/255.0, blue: 50.0/255.0, alpha: 1.0), colorTwo: UIColor(red: 253.0/255.0, green: 133.0/255.0, blue: 36.0/255.0, alpha: 1.0))
        self.clipsToBounds = true
    }
    
     func setGradientBackg(colorOne: UIColor, colorTwo:UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [0.35,1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}


//MARK: Gradient background color for height and width 
class JHBackgroundColorView: UIView {

    let gradient = CAGradientLayer.init()
    override func draw(_ rect: CGRect) {
        let JHorange = #colorLiteral(red: 0.9882352941, green: 0.8235294118, blue: 0.6, alpha: 1)
        let JHwhite = #colorLiteral(red: 0.9882352941, green: 0.8235294118, blue: 0.6, alpha: 1)
        let JHgreen = #colorLiteral(red: 0.6235294118, green: 0.9882352941, blue: 0.8039215686, alpha: 1)
//                self.setGradientBackgroundTopToBottom(colorOne:  #colorLiteral(red: 0.6235294118, green: 0.9882352941, blue: 0.8039215686, alpha: 1), colorTwo:  #colorLiteral(red: 0.9882352941, green: 0.8235294118, blue: 0.6, alpha: 1))
        
        self.setGradientBack(colorOne: JHgreen, colorTwo: JHwhite, colorThree: JHorange)

    }
    
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradient.frame = self.bounds
    }
    
    //MARK: Gradient view for UIView
    func setGradientBack(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor){
        
        gradient.frame = self.bounds
        gradient.colors = [colorOne.cgColor, colorThree.cgColor, colorThree.cgColor]
        gradient.startPoint = CGPoint(x: 0.8, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 0)
        layer.insertSublayer(gradient, at: 0)
    }
    
}


//MARK: Gradient view for UIView Top  to Bottom
class JHBackgroundTopToBottom: UIView {
   
    override func draw(_ rect: CGRect) {
        self.setGradientBackgroundTopToBottom(colorOne:  #colorLiteral(red: 0.6235294118, green: 0.9882352941, blue: 0.8039215686, alpha: 1), colorTwo:  #colorLiteral(red: 0.9882352941, green: 0.8235294118, blue: 0.6, alpha: 1))
        self.clipsToBounds = true
    }
    //MARK: Gradient view for UIView Top  to Bottom
    func setGradientBackgroundTopToBottom(colorOne: UIColor, colorTwo: UIColor){
        let gradient = CAGradientLayer.init()
        gradient.frame = bounds
        gradient.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradient.locations = [0, 1]
        layer.insertSublayer(gradient, at: 0)
    }
}



// MARK:- UIButton Corner-Radius...
class JHButton: JHButtonCorners{
    
    override func draw(_ rect: CGRect) {
        self.clipsToBounds = true
        self.setGradientBackgroundColor(colorOne: #colorLiteral(red: 1, green: 0.5098039216, blue: 0.1803921569, alpha: 1), colorTwo: #colorLiteral(red: 0.8925027251, green: 0.2142743766, blue: 0.1896360219, alpha: 1), button: self)
    }
    
    
    
    //Gradient view for button
    func setGradientBackgroundColor(colorOne: UIColor,colorTwo: UIColor,button: UIButton){
        let gradientLayer = CAGradientLayer.init()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 0.6]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.3)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        layer.insertSublayer(gradientLayer, at: 0)
        
        if let imageView = button.imageView {
            button.bringSubviewToFront(imageView)
        }
    }
}



// MARK:- UIButton Corner-Radius...
class JHButtonCorners: UIButton {
    
    override func didMoveToWindow() {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.masksToBounds = true
        //self.layer.shadowOffset = CGSize(width: 0, height: 5)
        //self.layer.shadowColor = #colorLiteral(red: 0.2666666667, green: 0.3764705882, blue: 0.6274509804, alpha: 1)
//        self.layer.shadowOpacity = 0.7
//        self.layer.shadowRadius = 5
    }
}


// MARK:- UIButton Shadow...
class JHButtonShadow: UIButton {
    
    override func didMoveToWindow() {
        self.layer.cornerRadius = self.frame.size.height/2
        self.layer.borderColor = #colorLiteral(red: 0.1294117647, green: 0.1882352941, blue: 0.2862745098, alpha: 0.0983113354)
        self.layer.borderWidth = 1
    }
}




extension UIViewController{
    // Show Warning messages for using toast...

}





class setGradientToView: UIView{
    override func didMoveToWindow() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.bounds
        self.layer.cornerRadius = 15
        self.layer.insertSublayer(gradientLayer, at:0)
    }
}



//Image view make circle 50%....
class imageCircle: UIImageView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
}



//Image view make circle 25%...
class JHImageCornerRadious: UIImageView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 16
        clipsToBounds = true
    }
}



//Image view make circle 25%...
class JHImageCornerDefault: UIImageView{
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}



/** Adding tool bar Done button*/
extension UIToolbar {
    func ToolbarPiker(selector : Selector) -> UIToolbar {
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: selector)
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([ spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        return toolBar
    }
}

//Autolay out constraing
extension UIView{
    func anchor(top: NSLayoutYAxisAnchor?,
                leading:NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?,
                padding: UIEdgeInsets = .zero,
                size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        guard let top = top,
            let leading = leading,
            let bottom = bottom,
            let trailing = trailing
            else { return }
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}


/// MARK: Extension for booleans class
extension Bool{
    /** Toogle booleans state*/
    mutating func toogle(){
        self = !self
    }
}




/** UITable view extension if found empty or nil data*/
extension UITableView {
    func setEmptyView(title: String, message: String) {
    let emptyView = UIView(frame: CGRect(x: self.center.x, y: self.center.y, width: self.bounds.size.width, height: self.bounds.size.height))
    let titleLabel = UILabel()
    let messageLabel = UILabel()
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    messageLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.textColor = UIColor.black
    titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
    messageLabel.textColor = UIColor.lightGray
    messageLabel.font = UIFont(name: "HelveticaNeue-Regular", size: 17)
    emptyView.addSubview(titleLabel)
    emptyView.addSubview(messageLabel)
    titleLabel.centerYAnchor.constraint(equalTo: emptyView.centerYAnchor).isActive = true
    titleLabel.centerXAnchor.constraint(equalTo: emptyView.centerXAnchor).isActive = true
    messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
    messageLabel.leftAnchor.constraint(equalTo: emptyView.leftAnchor, constant: 20).isActive = true
    messageLabel.rightAnchor.constraint(equalTo: emptyView.rightAnchor, constant: -20).isActive = true
    titleLabel.text = title
    messageLabel.text = message
    messageLabel.numberOfLines = 0
    messageLabel.textAlignment = .center
    // The only tricky part is here:
    self.backgroundView = emptyView
    self.separatorStyle = .none
    }
    
    func restore() {
    self.backgroundView = nil
    self.separatorStyle = .singleLine
    }

}

    
//////////////////**************** Table view end***********/////////////////////////////


/** Notification name list*/
extension Notification.Name {
    static let FIRENOTIFICATION = Notification.Name("FIRENOTIFICATION")
    static let videoFire = Notification.Name("VideoNotification")
    static let imageFire = Notification.Name("imageNotification")
    
    static let load = Notification.Name("load")
    static let Filter = Notification.Name("Filter")
    static let nameUpdateFire = Notification.Name("nameUpdateFire")
    static let videoList = Notification.Name("videoList")
    static let tableReloadFire = Notification.Name("tableReloadFire")
    static let tableUpdateFire = Notification.Name("tableUpdateFire")
    
    static let mediaFire = Notification.Name("GetMediaController")
    
    static let tabBarExchange = Notification.Name("tabBarExchange")
    static let chatCountNoti = Notification.Name("chatCountNoti")
    static let chatCountUpdate = Notification.Name("chatCountUpdate")
    static let chatTableUpdate = Notification.Name("chatTableUpdate")
    
    
   
    //static let postTableViewUpdateNotification = Notification.Name("postTableUpdate")
    
    }

////////////////////////////***************** Notification End******************////////////////////


/** Image view extension for using image url */

private var xoAssociationKey: UInt8 = 0

extension UIImageView {
    @nonobjc static var imageCache = NSCache<NSString ,AnyObject>()
    var imageURL: String? {
        get {
            return objc_getAssociatedObject(self, &xoAssociationKey) as? String
        }
        set(newValue) {
            guard let urlString = newValue else {
                objc_setAssociatedObject(self,&xoAssociationKey ,newValue ,objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
                image = nil
                return
            }
            objc_setAssociatedObject(self,&xoAssociationKey ,newValue ,objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
            if let image = UIImageView.imageCache.object(forKey: "\((urlString as NSString).hash)" as NSString) as? UIImage {
                self.image = image
                return
            }
            DispatchQueue.global().async { [weak self] in
                guard let url = URL(string: urlString as String) else {
                    return
                }
                guard let data = try? Data(contentsOf: url) else {
                    return
                }
                let image = UIImage(data: data)
                guard let fetchedImage = image else {
                    return
                }
                DispatchQueue.main.async {
                    UIImageView.imageCache.setObject(fetchedImage, forKey: "\(urlString.hash)" as NSString)
                    guard let pastImageUrl = self?.imageURL,
                        url.absoluteString == pastImageUrl else {
                        self?.image = nil
                        return
                    }
                    let animation = CATransition()
                    animation.type = CATransitionType.fade
                    animation.duration = 0.3
                    self?.layer.add(animation, forKey: "transition")
                    self?.image = fetchedImage
                }
            }
        }
    }
}




/**
    Remove duplicate value in string arrya..
 */
extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}


/**
    Safe array it will check the index is emptu the return nil
    It will protect the "Crash" return nil value instead of crash..
 */
/** Array index element value for handle the range of array...*/
extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}

/** image view extension for load url...
 Out put for image
 */
extension UIImageView {
    func loadUrlGetImg(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}



/**
 Data extension for create boundry string data
 to appending String enconding data for images and videos
 */
extension NSMutableData {
    func appendString(_ string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: false)
        append(data!)
    }
}





/** Make rounded value for make double remove the decimal value..
 */
extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}


///MARK: - Collectionview extension for found empty...
extension UICollectionView {
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: (screenHeight)/2))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel
    }

    func restore() {
        self.backgroundView = nil
    }
}


