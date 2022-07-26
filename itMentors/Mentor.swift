//
//  Mentor.swift
//  itMentors
//
//  Created by Иван Дрожжин on 26.07.2022.
//

import Foundation

struct Mentor {
    let name: String
    let surname: String
    
    let city: String
    let scope: String
    
    let image: String
    
    let reviews: [Review] 
    let students: [Student]
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getMentorsList() -> [Mentor] {
        var result: [Mentor] = []
        let data = MentorDataStore()
        
        for _ in 1...1000 {
            result.append(
                Mentor(
                    name: data.name,
                    surname: data.surname,
                    city: data.city,
                    scope: data.scope,
                    image: data.image,
                    reviews: Review.getReviews(),
                    students: Student.getStudents()
                )
            )
        }
        
        return result
    }
}

struct Review {
    let reviewerName: String
    let rating: Double
    let text: String
    
    static func getReviews() -> [Review] {
        var result: [Review] = []
        let data = MentorDataStore()
        
        for _ in 0...Int.random(in: 1...10) {
            result.append(
                Review(
                    reviewerName: data.fullName,
                    rating: Double(Int.random(in: 1...5)),
                    text: data.review
                )
            )
        }
        
        return result
    }
}

struct Student {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getStudents() -> [Student] {
        var result: [Student] = []
        let data = MentorDataStore()
        
        for _ in 0...Int.random(in: 1...10) {
            result.append(
                Student(
                    name: data.name,
                    surname: data.surname
                )
            )
        }
        
        return result
    }
}
