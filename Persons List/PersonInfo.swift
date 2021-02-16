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
}

extension Person {
    static func getPersonList() -> [Person] {
        var nameList = names
        var surnameList = surnames
        var phoneNumberList =  phoneNumbers
        var emailList = emails
        
        var persons: [Person] = []
        while nameList.count > 0 && surnameList.count > 0 && phoneNumberList.count > 0 && emailList.count > 0 {
            let personName = nameList.remove(at: Int.random(in: 1...nameList.count))
            let personSurname = surnameList.remove(at: Int.random(in: 1...surnameList.count))
            let personPhoneNumber = phoneNumberList.remove(at: Int.random(in: 1...phoneNumberList.count))
            let personEmail = emailList.remove(at: Int.random(in: 1...emailList.count))
            
            persons.append(Person(name: personName, surname: personSurname, phoneNumber: personPhoneNumber, email: personEmail))
        }
        return persons
    }
}
