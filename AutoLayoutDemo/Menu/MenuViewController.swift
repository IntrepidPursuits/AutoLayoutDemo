//
//  MenuViewController.swift
//  AutoLayoutDemo
//
//  Created by Rolfe, Paul on 9/18/18.
//  Copyright © 2018 IntrepidPursuits. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    @IBAction func openLayoutAnchorsExample(_ sender: UIButton) {
        let anchorsViewController = AnchorsViewController()
        navigationController?.pushViewController(anchorsViewController, animated: true)
    }
}
