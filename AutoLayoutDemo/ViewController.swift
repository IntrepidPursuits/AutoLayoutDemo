//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 1/11/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openLayoutAnchorsExample(_ sender: UIButton) {
        let anchorsViewController = AnchorsViewController()
        navigationController?.pushViewController(anchorsViewController, animated: true)
    }
}
