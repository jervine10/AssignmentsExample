//
//  FirstViewController.swift
//  TableViews
//
//  Created by Josh Ervine on 12/16/17.
//  Copyright © 2017 Josh Ervine. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var classNameLabel: UILabel!

    private let course = Course.seedData()

    override func viewDidLoad() {
        super.viewDidLoad()

        classNameLabel.text = course.name
    }

}

extension FirstViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return course.assignments.keys.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let type = AssignmentType(rawValue: section), let count = course.assignments[type]?.count else { return 0 }
        return count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AssignmentType(rawValue: section)?.name
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "assignmentCell", for: indexPath) as! AssignmentTableViewCell

        // assignmentCellConfiguration

        return cell
    }

}

extension FirstViewController: UITableViewDelegate {

}

// reloadRows
