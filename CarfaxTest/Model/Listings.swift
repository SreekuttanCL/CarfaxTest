//
//  Listings.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import Foundation
import SwiftUI

// MARK: - Listing
struct Listing: Hashable, Codable {
    let accidentHistory: History
    let advantage: Bool
    let atomOtherOptions, atomTopOptions: [String]
    let backfill: Bool
    let badge: Badge?
    let bedLength: String
    let bodytype: String
    let cabType: String
    let certified: Bool
    let currentPrice: Int
    let dealer: Dealer
    let dealerType: DealerType
    let displacement: Displacement
    let distanceToDealer: Double
    let drivetype: String
    let engine: String
    let exteriorColor: String
    let firstSeen: String
    let followCount: Int
    let followedAt: Int?
    let following: Bool
    let fuel: String
    let hasViewed: Bool
    let id: String
    let imageCount: Int
    let images: Images
    let interiorColor: String
    let isEnriched, isOEMPromoted, isOEMRefundFlag: Bool
    let listPrice: Int
    let make: String
    let mileage: Int
    let model: String
    let monthlyPaymentEstimate: MonthlyPaymentEstimate
    let mpgCity, mpgHighway: Int
    let noAccidents, oneOwner: Bool
    let onePrice: Int?
    let onePriceArrows: [OnePriceArrow]?
    let onlineOnly: Bool
    let ownerHistory: History
    let personalUse, placed: Bool
    let recordType: RecordType
    let sentLead: Bool
    let serviceHistory: ServiceHistory
    let serviceRecords: Bool
    let sortScore: Double
    let stockNumber: String
    let subTrim: String
    let topOptions: [String]
    let tpCostPerVdp: Double
    let tpEligible: Bool
    let transmission: String
    let trim: Trim
    let vdpURL: String
    let vehicleCondition: String
    let vehicleUseHistory: History
    let vin: String
    let windowSticker: String
    let year: Int
    let listingStatus: ListingStatus?

    enum CodingKeys: String, CodingKey {
        case accidentHistory, advantage, atomOtherOptions, atomTopOptions, backfill, badge, bedLength, bodytype, cabType, certified, currentPrice, dealer, dealerType, displacement, distanceToDealer, drivetype, engine, exteriorColor, firstSeen, followCount, followedAt, following, fuel, hasViewed, id, imageCount, images, interiorColor, isEnriched
        case isOEMPromoted = "isOemPromoted"
        case isOEMRefundFlag = "isOemRefundFlag"
        case listPrice, make, mileage, model, monthlyPaymentEstimate, mpgCity, mpgHighway, noAccidents, oneOwner, onePrice, onePriceArrows, onlineOnly, ownerHistory, personalUse, placed, recordType, sentLead, serviceHistory, serviceRecords, sortScore, stockNumber, subTrim, topOptions, tpCostPerVdp, tpEligible, transmission, trim
        case vdpURL = "vdpUrl"
        case vehicleCondition, vehicleUseHistory, vin, windowSticker, year, listingStatus
    }
}


// MARK: - Images
struct Images: Hashable,Codable {
    let baseURL: String
    let firstPhoto: FirstPhoto
    let large, medium, small: [String]

    enum CodingKeys: String, CodingKey {
        case baseURL = "baseUrl"
        case firstPhoto, large, medium, small
    }
}

// MARK: - FirstPhoto
struct FirstPhoto: Hashable,Codable {
    let large, medium, small: String
}
