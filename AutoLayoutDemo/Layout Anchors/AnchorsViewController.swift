//
//  AnchorsViewController.swift
//  AutoLayoutDemo
//
//  Created by Arlindo Goncalves on 9/10/18.
//  Copyright © 2018 IntrepidPursuits. All rights reserved.
//

import UIKit

class AnchorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutSquares()
    }

    func layoutSquares() {

    }

    func buildSquare(color: UIColor) -> UIView {
        let square = UIView()
        square.backgroundColor = color
        return square
    }
}
