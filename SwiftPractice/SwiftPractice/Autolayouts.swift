//
//  Autolayouts.swift
//
//  Created by Aman Gangurde
//  Copyright © 2019 Aman Gangurde . All rights reserved.

import UIKit

extension UIView{
    
    func enableAutolayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func topMargin(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: self.superview, attribute: .top, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func bottomMargin(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: self.superview, attribute: .bottom, multiplier: 1, constant: -pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func bottomMarginSmaller(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: self.superview, attribute: .bottom, multiplier: 1, constant: -pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func bottomMarginGreater(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: self.superview, attribute: .bottom, multiplier: 1, constant: -pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func belowView(_ pixels: CGFloat, to toView: UIView?) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: toView, attribute: .bottom, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func aboveView(_ pixels: CGFloat, to toView: UIView?) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: toView, attribute: .top, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func leadingMargin(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: self.superview, attribute: .leading, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func trailingMargin(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: self.superview, attribute: .trailing, multiplier: 1, constant: -pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func add(toRight pixels: CGFloat, of view: UIView?) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func add(toLeft pixels: CGFloat, of view: UIView?) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: -pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func fixWidth(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleWidthGreater(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .width, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleWidthSmaller(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .width, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func fixHeight(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleHeightGreater(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .height, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleHeightSmaller(_ pixels: CGFloat) {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .height, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
    
    func centerX() {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: superview, attribute: .centerX, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func centerY() {
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: superview, attribute: .centerY, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func centerX(toView view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func centerY(toView view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func equalWidth(toView view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func equalHeight(toView view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleWidthSameAs(view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func flexibleHeightSameAs(view: UIView?){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 0)
        self.superview!.addConstraint(contraint)
    }
    
    func heightConstraint(_ pixels: CGFloat){
        assert(translatesAutoresizingMaskIntoConstraints == false, "Please enable your view for autolayout using enableAutolayout")
        let contraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: pixels)
        self.superview!.addConstraint(contraint)
    }
}
