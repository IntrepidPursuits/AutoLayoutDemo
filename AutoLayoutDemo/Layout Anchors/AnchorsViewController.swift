//
//  AnchorsViewController.swift
//  AutoLayoutDemo
//
//  Created by Arlindo Goncalves on 9/10/18.
//  Copyright © 2018 IntrepidPursuits. All rights reserved.
//

import UIKit

class AnchorsViewController: UIViewController {

    struct Constants {
        static let firstSquareSize: CGSize = CGSize(width: 100, height: 100)
        static let secondSquareSize: CGSize = CGSize(width: 40, height: 40)
        static let thirdSquareSize: CGSize = CGSize(width: 70, height: 70)
        static let fourthSquareSize: CGSize = CGSize(width: 23, height: 23)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutSquares()
    }

    func layoutSquares() {
        let firstSquare = buildSquare(color: .red)
        let secondSquare = buildSquare(color: .red)
        let thirdSquare = buildSquare(color: .red)
        let fourthSquare = buildSquare(color: .red)

        [firstSquare, secondSquare, thirdSquare, fourthSquare].forEach { square in
            square.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(square)
        }

        let topAnchor: NSLayoutYAxisAnchor
        let bottomAnchor: NSLayoutYAxisAnchor

        if #available(iOS 11.0, *) {
            topAnchor = view.safeAreaLayoutGuide.topAnchor
            bottomAnchor = view.safeAreaLayoutGuide.bottomAnchor
        } else {
            topAnchor = topLayoutGuide.bottomAnchor
            bottomAnchor = bottomLayoutGuide.topAnchor
        }

        [firstSquare.topAnchor.constraint(equalTo: topAnchor),
         firstSquare.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
         firstSquare.heightAnchor.constraint(equalToConstant: Constants.firstSquareSize.height),
         firstSquare.widthAnchor.constraint(equalToConstant: Constants.firstSquareSize.width)
        ].forEach{ $0.isActive = true}

        [secondSquare.topAnchor.constraint(equalTo: topAnchor, constant: 16),
         secondSquare.rightAnchor.constraint(equalTo: view.rightAnchor),
         secondSquare.heightAnchor.constraint(equalToConstant: Constants.secondSquareSize.height),
         secondSquare.widthAnchor.constraint(equalToConstant: Constants.secondSquareSize.width)
        ].forEach{ $0.isActive = true}

        [thirdSquare.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
         thirdSquare.leftAnchor.constraint(equalTo: view.leftAnchor),
         thirdSquare.heightAnchor.constraint(equalToConstant: Constants.thirdSquareSize.height),
         thirdSquare.widthAnchor.constraint(equalToConstant: Constants.thirdSquareSize.width)
        ].forEach{ $0.isActive = true}

        [fourthSquare.bottomAnchor.constraint(equalTo: bottomAnchor),
         fourthSquare.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
         fourthSquare.heightAnchor.constraint(equalToConstant: Constants.fourthSquareSize.height),
         fourthSquare.widthAnchor.constraint(equalToConstant: Constants.fourthSquareSize.width)
        ].forEach{ $0.isActive = true}
    }

    func buildSquare(color: UIColor) -> UIView {
        let square = UIView()
        square.backgroundColor = color
        return square
    }
}
