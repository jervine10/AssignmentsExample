//
//  Course.swift
//  TableViews
//
//  Created by Josh Ervine on 12/16/17.
//  Copyright © 2017 Josh Ervine. All rights reserved.
//

import Foundation

struct Course {

    let name: String
    let time: Date
    var assignments = [AssignmentType: [Assignment]]()

}

extension Course {

    static func seedData() -> Course {
        var assignments = [AssignmentType : [Assignment]]()

        // Projects
        let project1 = Assignment(name: "Hello World", score: 20, possibleScore: 20)
        let project2 = Assignment(name: "Jedi or Sith", score: 17.5, possibleScore: 20)
        let project3 = Assignment(name: "TableViews!!", score: 19, possibleScore: 20)
        let project4 = Assignment(name: "Donkey Kong", score: 14, possibleScore: 20)
        let project5 = Assignment(name: "Calculator", score: 16, possibleScore: 20)

        let projects = [project1, project2, project3, project4, project5]
        assignments[.project] = projects

        // Exams
        var exams = [Assignment]()
        for i in 1 ... 3 {
            let exam = Assignment(name: "Exam\(i)", score: Double(arc4random_uniform(100)), possibleScore: 100)
            exams.append(exam)
        }
        assignments[.exam] = exams

        // Quizzes
        var quizzes = [Assignment]()
        for i in 1 ... 10 {
            let quiz = Assignment(name: "Quiz\(i)", score: Double(arc4random_uniform(10)), possibleScore: 10)
            quizzes.append(quiz)
        }
        assignments[.quiz] = quizzes

        let course = Course(name: "iOS Development", time: Date(), assignments: assignments)
        return course
    }

}
