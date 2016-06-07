//
//  ALMenuViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 5/27/16.
//  Copyright © 2016 Intrepid-Pursuits. All rights reserved.
//

import UIKit

/**
 * This tutorial is an example of a frequently create UI structure. A custom, dynamically sizing selection menu.
 */
class ALMenuViewController: UIViewController {

    @IBOutlet var menuContainerView: UIView!
    let view1: UIView = {
        let aView = UIView()
        aView.backgroundColor = UIColor.orangeColor()
        return aView
    }()

    let view2: UIView = {
        let aView = UIView()
        aView.backgroundColor = UIColor.blueColor()
        return aView
    }()

    let view3: UIView = {
        let aView = UIView()
        aView.backgroundColor = UIColor.greenColor()
        return aView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        menuContainerView.addSubview(view1)
        menuContainerView.addSubview(view2)
        menuContainerView.addSubview(view3)
        constrainViews()
    }

    @IBAction func dismissButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    // Programmatic Constraints

    func constrainViews() {
        var preceedingView: UIView?
        let detailViews = [view1, view2, view3]

        for currentView in detailViews {
            currentView.translatesAutoresizingMaskIntoConstraints = false;
            let topConstraint = NSLayoutConstraint(item: currentView,
                                                   attribute: .Top,
                                                   relatedBy: .Equal,
                                                   toItem: menuContainerView,
                                                   attribute: .Top,
                                                   multiplier: 1.0,
                                                   constant: 0.0)
            let bottomConstraint = NSLayoutConstraint(item: currentView,
                                                      attribute: .Bottom,
                                                      relatedBy: .Equal,
                                                      toItem: menuContainerView,
                                                      attribute: .Bottom,
                                                      multiplier: 1.0,
                                                      constant: 0.0)
            menuContainerView.addConstraints([bottomConstraint, topConstraint])
            if let preceedingView = preceedingView {
                let horizontalSpaceConstraint = NSLayoutConstraint(item: currentView,
                                                                   attribute: .Left,
                                                                   relatedBy: .Equal,
                                                                   toItem: preceedingView,
                                                                   attribute: .Right,
                                                                   multiplier: 1.0,
                                                                   constant: 0.0)
                let widthConstraint = NSLayoutConstraint(item: currentView,
                                                         attribute: .Width,
                                                         relatedBy: .Equal,
                                                         toItem: preceedingView,
                                                         attribute: .Width,
                                                         multiplier: 1.0,
                                                         constant: 0.0)
                menuContainerView.addConstraints([horizontalSpaceConstraint, widthConstraint])
            } else {
                let leftConstraint = NSLayoutConstraint(item: currentView,
                                                        attribute: .Left,
                                                        relatedBy: .Equal,
                                                        toItem: menuContainerView,
                                                        attribute: .Left,
                                                        multiplier: 1.0,
                                                        constant: 0.0)
                menuContainerView.addConstraint(leftConstraint)
            }
            preceedingView = currentView
        }
        if let preceedingView = preceedingView {
            let rightConstraint = NSLayoutConstraint(item: preceedingView,
                                                     attribute: .Right,
                                                     relatedBy: .Equal,
                                                     toItem: menuContainerView,
                                                     attribute: .Right,
                                                     multiplier: 1.0,
                                                     constant: 0.0)
            menuContainerView.addConstraint(rightConstraint)
        }

    }


}
