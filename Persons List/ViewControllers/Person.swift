//
//  Person.swift
//  Persons List
//
//  Created by Вячеслав Турчак on 20.06.2022.
//

struct Person {
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
