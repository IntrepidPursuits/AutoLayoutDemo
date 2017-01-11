//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 1/11/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit
import Intrepid

class MainViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        /**
         * There are multiple ways of using AutoLayout programmatically.
         *
         * I will provide examples for 2 of them:
         * 1) NSLayoutConstraint
         * 2) NSLayoutAnchor
         * 3) Intrepid UIKit Wisdom
         */

        constrainUsingNSLayoutConstraints()
//        constrainUsingNSLayoutAnchor()
//        constrainUsingIntrepidWisdom()
    }

    // MARK: NSLayoutConstraint

    private func constrainUsingNSLayoutConstraints() {
        var preceedingView: UIView?
        let detailViews: [UIView] = [view1, view2, view3]

        for currentView in detailViews {
            // ***Important***
            currentView.translatesAutoresizingMaskIntoConstraints = false;
            // ***************
            let topConstraint = NSLayoutConstraint(item: currentView,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: containerView,
                                                   attribute: .top,
                                                   multiplier: 1.0,
                                                   constant: 0.0)
            let bottomConstraint = NSLayoutConstraint(item: currentView,
                                                      attribute: .bottom,
                                                      relatedBy: .equal,
                                                      toItem: containerView,
                                                      attribute: .bottom,
                                                      multiplier: 1.0,
                                                      constant: 0.0)
            containerView.addConstraints([bottomConstraint, topConstraint])
            if let preceedingView = preceedingView {
                let horizontalSpaceConstraint = NSLayoutConstraint(item: currentView,
                                                                   attribute: .left,
                                                                   relatedBy: .equal,
                                                                   toItem: preceedingView,
                                                                   attribute: .right,
                                                                   multiplier: 1.0,
                                                                   constant: 0.0)
                let widthConstraint = NSLayoutConstraint(item: currentView,
                                                         attribute: .width,
                                                         relatedBy: .equal,
                                                         toItem: preceedingView,
                                                         attribute: .width,
                                                         multiplier: 1.0,
                                                         constant: 0.0)
                containerView.addConstraints([horizontalSpaceConstraint, widthConstraint])
            } else {
                let leftConstraint = NSLayoutConstraint(item: currentView,
                                                        attribute: .left,
                                                        relatedBy: .equal,
                                                        toItem: containerView,
                                                        attribute: .left,
                                                        multiplier: 1.0,
                                                        constant: 0.0)
                containerView.addConstraint(leftConstraint)
            }
            preceedingView = currentView
        }
        if let preceedingView = preceedingView {
            let rightConstraint = NSLayoutConstraint(item: preceedingView,
                                                     attribute: .right,
                                                     relatedBy: .equal,
                                                     toItem: containerView,
                                                     attribute: .right,
                                                     multiplier: 1.0,
                                                     constant: 0.0)
            containerView.addConstraint(rightConstraint)
        }
    }

    // MARK: NSLayoutAnchor

    private func constrainUsingNSLayoutAnchor() {
        var preceedingView: UIView?
        let detailViews: [UIView] = [view1, view2, view3]

        for currentView in detailViews {
            // ***Important***
            currentView.translatesAutoresizingMaskIntoConstraints = false;
            // ***************
            currentView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
            currentView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true

            if let preceedingView = preceedingView {
                currentView.leftAnchor.constraint(equalTo: preceedingView.rightAnchor).isActive  = true
                currentView.widthAnchor.constraint(equalTo: preceedingView.widthAnchor).isActive = true
            } else {
                currentView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
            }
            preceedingView = currentView
        }
        if let preceedingView = preceedingView {
            preceedingView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
        }
    }

    // MARK: Intrepid UIKit wisdom

    private func constrainUsingIntrepidWisdom() {
        var preceedingView: UIView?
        let detailViews: [UIView] = [view1, view2, view3]

        for currentView in detailViews {
            containerView.constrainView(toTop: currentView)
            containerView.constrainView(toBottom: currentView)
            if let preceedingView = preceedingView {
                containerView.constrainView(currentView, rightOf: preceedingView)
                containerView.constrainView(currentView, toWidthOf: preceedingView)
            } else {
                containerView.constrainView(toLeft: currentView)
            }
            preceedingView = currentView
        }

        if let preceedingView = preceedingView {
            containerView.constrainView(toRight: preceedingView)
        }
    }
}
