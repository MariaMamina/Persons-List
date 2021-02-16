//
//  PersonInfo.swift
//  Persons List
//
//  Created by Maria Mamina on 16.02.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fulName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var nameList = names
        var surnameList = surnames
        var phoneNumberList =  phoneNumbers
        var emailList = emails
        
        var persons: [Person] = []
        while nameList.count > 0 {
//                && surnameList.count > 0 && phoneNumberList.count > 0 && emailList.count > 0 {
            let personName = nameList.remove(at: Int.random(in: 0...nameList.count - 1))
            
            let personPhoneNumber = phoneNumberList.remove(at: Int.random(in: 0...phoneNumberList.count - 1))
            let personEmail = emailList.remove(at: Int.random(in: 0...emailList.count - 1))
            
            let personSurname = surnameList.remove(at: Int.random(in: 0...surnameList.count - 1))
            print(personName, personSurname, personPhoneNumber, personEmail)
            persons.append(Person(name: personName, surname: personSurname, phoneNumber: personPhoneNumber, email: personEmail))
        }
        return persons
    }
}
