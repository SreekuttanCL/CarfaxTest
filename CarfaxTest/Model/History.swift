//
//  History.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import Foundation

// MARK: - History
struct History: Hashable,Codable {
    let accidentSummary: [AccidentSummary]?
    let icon: AccidentHistoryIcon
    let iconURL: String?
    let text: AccidentHistoryText
    let history: [AccidentHistoryHistory]?

    enum CodingKeys: String, CodingKey {
        case accidentSummary, icon
        case iconURL = "iconUrl"
        case text, history
    }
}

enum AccidentSummary:String, Hashable, Codable {
    case noAccidentDamageReportedToCARFAX = "No accident/damage reported to CARFAX"
}

// MARK: - AccidentHistoryHistory
struct AccidentHistoryHistory: Hashable,Codable {
    let city, endOwnershipDate: String?
    let ownerNumber: Int
    let purchaseDate, state: String?
    let averageMilesPerYear: Int?
    let useType: UseType?
}

enum UseType: String, Hashable, Codable {
    case empty = ""
    case fleet = "Fleet"
    case personalLease = "Personal Lease"
    case personalUse = "Personal Use"
}

enum AccidentHistoryIcon:String, Hashable, Codable {
    case empty = ""
    case generic = "generic"
    case noAccident = "noAccident"
    case owner1 = "owner1"
    case owner2 = "owner2"
    case owner3 = "owner3"
    case personal = "personal"
}

enum AccidentHistoryText: String, Hashable, Codable {
    case carfax1Owner = "CARFAX 1-Owner"
    case multipleUse = "Multiple Use"
    case noAccidentOrDamageReported = "No Accident or Damage Reported"
    case personalUse = "Personal Use"
    case the2Owner = "2-Owner"
    case the3Owners = "3+ Owners"
    case vehicleUse = "Vehicle Use"
}

// MARK: - ServiceHistory
struct ServiceHistory: Hashable,Codable {
    let history: [ServiceHistoryHistory]?
    let icon: OnePriceArrowIcon
    let iconURL: String
    let number: Int
    let text: ServiceHistoryText

    enum CodingKeys: String, CodingKey {
        case history, icon
        case iconURL = "iconUrl"
        case number, text
    }
}

// MARK: - ServiceHistoryHistory
struct ServiceHistoryHistory: Hashable,Codable {
    let city, date, historyDescription: String
    let odometerReading: Int
    let source, state: String

    enum CodingKeys: String, CodingKey {
        case city, date
        case historyDescription = "description"
        case odometerReading, source, state
    }
}

enum ServiceHistoryText: String, Hashable, Codable {
    case serviceHistory = "Service History"
}
