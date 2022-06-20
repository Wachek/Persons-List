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
    
   static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        
        for _ in 1...10 {
            
            let person = Person(
                name: names.randomElement() ?? "",
                lastName: lastNames.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? "",
                email: emails.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
    
}
