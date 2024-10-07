//
//  Person.swift
//  flying app
//
//  Created by José Torres on 23/09/24.
//
import Foundation

struct Person {
    let headerImage: String
    let profileImage: String
    let name: String
    let followerCount: Int
    let jobTitle: String
}

let person1 = Person(headerImage: "HeaderImage1", profileImage: "ProfileImage1", name: "José Torres", followerCount: 1000, jobTitle: "Developer")
let person2 = Person(headerImage: "HeaderImage2", profileImage: "ProfileImage2", name: "Carlos Torres", followerCount: 2000, jobTitle: "Artist")
