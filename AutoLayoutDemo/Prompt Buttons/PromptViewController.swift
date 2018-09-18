//
//  PromptViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 1/11/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit

class PromptViewController: UIViewController {

    @IBOutlet weak var rightLabel: UILabel!
    private let shortString = "DONATION BY TEXT"
    private let longString = "YOU MUST DONATE BY TAPPING THIS BUTTON NOW"

    @IBAction func toggleTextLength(_ sender: UIButton) {
        if let text = rightLabel.text {
            rightLabel.text = text == shortString ? longString : shortString
        }
    }
}
