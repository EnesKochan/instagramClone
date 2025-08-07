//
//  User.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 26.07.2025.
//

import Foundation


struct User: Identifiable,Hashable, Codable {
    let id: String
    var username: String
    var fullName: String?
    var profileImageUrl: String?
    var bio: String?
    let email: String
}

extension User{
    static var MOCK_USER: [User] = [
        .init(id: UUID().uuidString, username: "monkey1", fullName: "Monkey 1", profileImageUrl: "maymun1",  bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey1@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey2", fullName: "Monkey 2", profileImageUrl: "maymun2",  bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey2@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey3", fullName: "Monkey 3", profileImageUrl: "maymun3",  bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey3@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey4", fullName: "Monkey 4", profileImageUrl: "maymun4",  bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey4@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey5", fullName: "Monkey 5", profileImageUrl: "maymun5",  bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey5@gmail.com"),
        ]
}
