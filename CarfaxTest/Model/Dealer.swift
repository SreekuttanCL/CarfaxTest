//
//  Dealer.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import Foundation

// MARK: - Dealer
struct Dealer: Hashable,Codable {
    let address: String
    let backfill: Bool
    let carfaxID: String
    let cfxMicrositeURL: String
    let city: String
    let dealerAverageRating: Double
    let dealerInventoryURL: String
    let dealerLeadType: DealerLeadType
    let dealerReviewComments: String
    let dealerReviewCount: Int
    let dealerReviewDate: String
    let dealerReviewRating: Int
    let dealerReviewReviewer, dealerReviewTitle, latitude, longitude: String
    let name: String
    let onlineOnly: Bool
    let phone: String
    let state: States
    let zip: String

    enum CodingKeys: String, CodingKey {
        case address, backfill
        case carfaxID = "carfaxId"
        case cfxMicrositeURL = "cfxMicrositeUrl"
        case city, dealerAverageRating
        case dealerInventoryURL = "dealerInventoryUrl"
        case dealerLeadType, dealerReviewComments, dealerReviewCount, dealerReviewDate, dealerReviewRating, dealerReviewReviewer, dealerReviewTitle, latitude, longitude, name, onlineOnly, phone, state, zip
    }
}

enum DealerType: String, Hashable, Codable {
    case new = "NEW"
    case used = "USED"
}
