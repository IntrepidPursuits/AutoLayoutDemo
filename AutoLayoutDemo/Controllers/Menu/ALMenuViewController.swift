//
//  ALMenuViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 5/27/16.
//  Copyright © 2016 Intrepid-Pursuits. All rights reserved.
//

import UIKit

class ALMenuViewController: UIViewController {

    @IBOutlet var menuContainerView: UIView!
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dismissButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
