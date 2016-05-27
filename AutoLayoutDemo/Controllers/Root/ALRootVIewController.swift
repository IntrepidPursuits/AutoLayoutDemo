//
//  ALRootVIewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 5/25/16.
//  Copyright © 2016 Intrepid-Pursuits. All rights reserved.
//

import UIKit

class ALRootVIewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func menuLayoutSelected(sender: UIButton) {
        let menuVC = ALMenuViewController();
        presentViewController(menuVC, animated: true, completion: nil);
    }

    @IBAction func promptLayoutSelected(sender: UIButton) {
        let promptVC = ALPromptViewController();
        presentViewController(promptVC, animated: true, completion: nil);
    }
    
}
