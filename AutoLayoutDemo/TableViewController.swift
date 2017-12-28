//
//  TableViewController.swift
//  AutoLayoutDemo
//
//  Created by Rolfe, Paul on 12/28/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    private let cellIdentifier = "cell"

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let model = SomeDataSource[indexPath.row]
        (cell as? ExampleTableViewCell)?.setup(with: model)
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SomeDataSource.count
    }
}

struct ExampleCellModel {
    let titleText: String?
    let mainText: String?
    let image: UIImage?
}

private let SomeDataSource: [ExampleCellModel] = [
    ExampleCellModel(
        titleText: "Hello World",
        mainText: "Lorem Ipsum",
        image: #imageLiteral(resourceName: "Intrepid_logo")
    ),
    ExampleCellModel(
        titleText: "Hodor",
        mainText: "Hodor hodor - hodor... Hodor hodor hodor; hodor hodor?! Hodor hodor; hodor hodor hodor? Hodor hodor... Hodor hodor hodor - hodor; hodor hodor hodor! Hodor! Hodor hodor, hodor, hodor. Hodor hodor - hodor. Hodor. Hodor hodor - hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor hodor HODOR! Hodor hodor hodor hodor hodor. Hodor. Hodor, hodor... Hodor hodor hodor, hodor. Hodor hodor hodor!",
        image: #imageLiteral(resourceName: "Intrepid_logo")
    ),
    ExampleCellModel(
        titleText: "Hipster",
        mainText: "Bushwick fanny pack post-ironic celiac, hella dreamcatcher VHS poutine cliche lomo church-key. Mustache occupy cronut heirloom subway tile, viral crucifix retro church-key man bun cliche art party prism umami vape. ",
        image: #imageLiteral(resourceName: "Intrepid_logo")
    )
]
