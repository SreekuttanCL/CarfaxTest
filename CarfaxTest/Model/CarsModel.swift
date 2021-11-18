//
//  welcome.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import Foundation

// MARK: - Welcome
struct CarsModel: Hashable,Codable {
    let backfillCount: Int
    let breadCrumbs: [BreadCrumb]
    let dealerNewCount, dealerUsedCount, enhancedCount: Int
    let facetCountMap: [String: FacetCountMap]
    let listings: [Listing]
    let page, pageSize: Int
    let relatedLinks: RelatedLinks
    let searchArea: SearchArea
    let searchRequest: SearchRequest
    let seoURL: String
    let totalListingCount, totalPageCount: Int

    enum CodingKeys: String, CodingKey {
        case backfillCount, breadCrumbs, dealerNewCount, dealerUsedCount, enhancedCount, facetCountMap, listings, page, pageSize, relatedLinks, searchArea, searchRequest
        case seoURL = "seoUrl"
        case totalListingCount, totalPageCount
    }
}

// MARK: - BreadCrumb
struct BreadCrumb: Hashable,Codable {
    let label: String
    let link: String
    let position: Int
}

// MARK: - FacetCountMap
struct FacetCountMap: Hashable,Codable {
    let facets: [Facet]
}

// MARK: - Facet
struct Facet: Hashable,Codable {
    let encodedName, name: String
    let value: Int
    let facetDescription: String?

    enum CodingKeys: String, CodingKey {
        case encodedName, name, value
        case facetDescription = "description"
    }
}

enum Badge: String, Hashable, Codable {
    case fair = "FAIR"
    case good = "GOOD"
    case great = "GREAT"
}

enum DealerLeadType: String, Hashable, Codable {
    case carvana = "Carvana"
    case empty = ""
}

enum States: String, Hashable, Codable {
    case ct = "CT"
    case nj = "NJ"
    case ny = "NY"
    case pa = "PA"
}

enum Displacement: String, Hashable, Codable {
    case the14L = "1.4 L"
}

enum ListingStatus: String, Hashable, Codable {
    case newlyListed = "NEWLY LISTED"
    case priceDrop = "PRICE DROP"
    case sold = "SOLD"
}

// MARK: - MonthlyPaymentEstimate
struct MonthlyPaymentEstimate: Hashable,Codable {
    let downPaymentAmount: Double
    let downPaymentPercent, interestRate: Int
    let loanAmount, monthlyPayment: Double
    let price, termInMonths: Int
}

// MARK: - OnePriceArrow
struct OnePriceArrow: Hashable,Codable {
    let arrow: Arrow
    let arrowURL: String
    let icon: OnePriceArrowIcon
    let iconURL: String
    let order: Int
    let text: String

    enum CodingKeys: String, CodingKey {
        case arrow
        case arrowURL = "arrowUrl"
        case icon
        case iconURL = "iconUrl"
        case order, text
    }
}

enum Arrow: String, Hashable, Codable {
    case down = "DOWN"
    case up = "UP"
}

enum OnePriceArrowIcon: String, Hashable, Codable {
    case cpo = "cpo"
    case noAccident = "noAccident"
    case owner1 = "owner1"
    case personal = "personal"
    case recall = "recall"
    case service = "service"
    case wellMaintained = "wellMaintained"
}

enum RecordType: String, Hashable, Codable {
    case enhanced = "ENHANCED"
}

enum Trim: String,Hashable, Codable {
    case abarth = "Abarth"
    case classica = "Classica"
    case lusso = "Lusso"
}


// MARK: - RelatedLinks
struct RelatedLinks: Hashable,Codable {
    let fiat124SpiderTrimLevels: [Fiat124_SpiderTrimLevel]
    let similarCars: [SimilarCar]
    let usedFiat124SpiderByYear: [Fiat124_SpiderTrimLevel]

    enum CodingKeys: String, CodingKey {
        case fiat124SpiderTrimLevels = "Fiat 124 Spider Trim Levels"
        case similarCars = "Similar Cars"
        case usedFiat124SpiderByYear = "Used Fiat 124 Spider by Year"
    }
}

// MARK: - Fiat124_SpiderTrimLevel
struct Fiat124_SpiderTrimLevel: Hashable,Codable {
    let count: Int
    let text: String
    let url: String
}

// MARK: - SimilarCar
struct SimilarCar: Hashable,Codable {
    let text: String
    let url: String
}

// MARK: - SearchArea
struct SearchArea: Hashable,Codable {
    let city: String
    let dynamicRadii: [Int]
    let dynamicRadius: Bool
    let latitude, longitude: Double
    let radius: Int
    let state: States
    let zip: String
}

// MARK: - SearchRequest
struct SearchRequest: Hashable,Codable {
    let make: String
    let mileageRange: Range
    let model: String
    let priceRange: PriceRange
    let radius: Int
    let srpURL, webHost: String
    let yearRange: Range
    let zip: String

    enum CodingKeys: String, CodingKey {
        case make, mileageRange, model, priceRange, radius
        case srpURL = "srpUrl"
        case webHost, yearRange, zip
    }
}

// MARK: - Range
struct Range: Hashable,Codable {
    let max, min: Int
}

// MARK: - PriceRange
struct PriceRange: Hashable,Codable {
    let min: Int
}
