//
//  AssignmentTableViewCell.swift
//  TableViews
//
//  Created by Josh Ervine on 12/16/17.
//  Copyright © 2017 Josh Ervine. All rights reserved.
//

import UIKit

class AssignmentTableViewCell: UITableViewCell {

    @IBOutlet var gradeImageView: UIImageView!

    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        selectionStyle = .none
    }

}
