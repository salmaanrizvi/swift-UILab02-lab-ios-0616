//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    
    @IBOutlet var paintBucket: UIImageView!
    @IBOutlet var firstPaintSelector: UISegmentedControl!
    @IBOutlet var secondPaintSelector: UISegmentedControl!

    let colorArray : [String] = ["Red", "Yellow", "Blue"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        
        for i in 0 ..< firstPaintSelector.numberOfSegments {
            firstPaintSelector.setTitle(colorArray[i], forSegmentAtIndex: i)
            secondPaintSelector.setTitle(colorArray[i], forSegmentAtIndex: i)
        }
        
        // TODO: Set the initial paint color to "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        switch first {
        case "Red":
            switch second {
            case "Red": return "Red"
            case "Yellow": return "Orange"
            default: return "Purple" //default is blue case
            }
        case "Yellow":
            switch second {
            case "Red": return "Orange"
            case "Yellow": return "Yellow"
            default: return "Green" //default is blue
            }
        default: // default is blue
            switch second {
            case "Red": return "Purple"
            case "Yellow": return "Green"
            default: return "Blue" //default is blue
            }
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let firstColor = firstPaintSelector.titleForSegmentAtIndex(firstPaintSelector.selectedSegmentIndex)!
        let secondColor = secondPaintSelector.titleForSegmentAtIndex(secondPaintSelector.selectedSegmentIndex)!
        
        paintBucket.paintColorName = mixColors(withFirst: firstColor, second: secondColor)
    }
    
    private func setupConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
//        paintBucket.translatesAutoresizingMaskIntoConstraints = false
        firstPaintSelector.translatesAutoresizingMaskIntoConstraints = false
        secondPaintSelector.translatesAutoresizingMaskIntoConstraints = false
        
        view.removeConstraints(view.constraints)
//        paintBucket.removeConstraints(paintBucket.constraints)
        firstPaintSelector.removeConstraints(firstPaintSelector.constraints)
        secondPaintSelector.removeConstraints(secondPaintSelector.constraints)
        
//        paintBucket.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor, constant: 0).active = true
//        paintBucket.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.75).active = true
//        paintBucket.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: -250).active = true
//        paintBucket.contentMode = UIViewContentMode.ScaleAspectFit
        
        firstPaintSelector.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        firstPaintSelector.centerYAnchor.constraintEqualToAnchor(view.topAnchor, constant: view.bounds.size.height * 0.8).active = true
        firstPaintSelector.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.75)
        secondPaintSelector.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        secondPaintSelector.centerYAnchor.constraintEqualToAnchor(view.topAnchor, constant: view.bounds.size.height * 0.86).active = true
    }
}
