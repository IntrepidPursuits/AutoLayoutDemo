//
//  ALPromptViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 5/27/16.
//  Copyright © 2016 Intrepid-Pursuits. All rights reserved.
//

import UIKit

class ALPromptViewController: UIViewController {

    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var continueButton: UIButton!

    // Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Setup

    func setupButtonUI() {
        cancelButton.layer.cornerRadius = (cancelButton.frame.height / 2)
        cancelButton.layer.masksToBounds = true

        continueButton.layer.cornerRadius = (continueButton.frame.height / 2)
        continueButton.layer.masksToBounds = true
    }

    // Actions

    @IBAction func dismissButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
