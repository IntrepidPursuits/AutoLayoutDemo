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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dismissButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
