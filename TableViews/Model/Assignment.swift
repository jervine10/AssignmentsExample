//
//  Assignment.swift
//  TableViews
//
//  Created by Josh Ervine on 12/16/17.
//  Copyright © 2017 Josh Ervine. All rights reserved.
//

import UIKit

enum AssignmentType: Int {

    case project = 0
    case quiz
    case exam

    var name: String {
        switch self {
        case .project:
            return "Projects"
        case .exam:
            return "Exams"
        case .quiz:
            return "Quizzes"
        }
    }

}

struct Assignment {

    let name: String
    let score: Double
    let possibleScore: Double

}

extension Assignment {

    private static let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2

        return formatter
    }()

    var percent: String {
        return ""
    }

    // assignmentIcon
    var icon: UIImage? {
        return nil
    }

    // assignmentColor
    var color: UIColor {
        return .blue
    }

}
