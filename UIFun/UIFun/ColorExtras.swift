//
//  ColorExtras.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

extension UIColor {
    var name: String {
        switch self {
        case UIColor.redColor(): return "Red"
        case UIColor.blueColor(): return "Blue"
        case UIColor.yellowColor(): return "Yellow"
        case UIColor.purpleColor(): return "Purple"
        case UIColor.orangeColor(): return "Orange"
        case UIColor.greenColor(): return "Green"
        default: assert(false, "Invalid paint color: \(self)")
        }
    }
}

extension UIView {
    var paintColor: UIColor {
        get {
            return backgroundColor!
        }
        set {
            backgroundColor = newValue
        }
    }

    var paintColorName: String {
        get {
            return paintColor.name
        }
        set {
            switch newValue {
            case "Red": paintColor = UIColor.redColor()
            case "Blue": paintColor = UIColor.blueColor()
            case "Yellow": paintColor = UIColor.yellowColor()
            case "Purple": paintColor = UIColor.purpleColor()
            case "Orange": paintColor = UIColor.orangeColor()
            case "Green": paintColor = UIColor.greenColor()
            default: assert(false, "Invalid paint color: \(newValue)")
            }
        }
    }
}

extension UISegmentedControl {
    var color: UIColor {
        switch selectedSegmentIndex {
        case 0: return UIColor.redColor()
        case 1: return UIColor.yellowColor()
        case 2: return UIColor.blueColor()
        default: assert(false, "Invalid index: \(selectedSegmentIndex)")
        }
    }
}
