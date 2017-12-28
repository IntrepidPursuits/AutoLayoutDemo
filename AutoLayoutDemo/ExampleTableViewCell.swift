//
//  ExampeTableViewCell.swift
//  AutoLayoutDemo
//
//  Created by Rolfe, Paul on 12/28/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!

    func setup(with model: ExampleCellModel) {
        titleLabel.text = model.titleText
        bodyLabel.text = model.mainText
        iconImageView.image = model.image
    }
}
