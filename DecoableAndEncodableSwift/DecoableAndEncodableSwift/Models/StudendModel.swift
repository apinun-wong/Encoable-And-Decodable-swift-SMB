//
//  StudendModel.swift
//  DecoableAndEncodableSwift
//
//  Created by Apinun on 16/7/2566 BE.
//

import Foundation

struct EmployeeModel: Decodable {
    let firstName: String
    let lastName: String
    let nickName: String
    let birthDate: Date?
    let workHistory: [WorkHistory]
    let hobbies: [Hobbies]
    let address: Address
}

enum TypeOfWork: Equatable {
    case permanant
    case contract
    case freelance
}

struct WorkHistory: Decodable {
    let companyName: String
    let startDate: Date?
    let endDate: Date?
    let position: String
    let salary: Double
    let typeOfWork: TypeOfWork
}

struct Address: Decodable {
    let city: String
    let street: String
    let country: String
}

struct Hobbies: Decodable {
    let title: String
    
}

extension TypeOfWork: Decodable {
    
}
