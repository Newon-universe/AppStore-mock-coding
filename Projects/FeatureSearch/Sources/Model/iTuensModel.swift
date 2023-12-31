//
//  iTuensModel.swift
//  Core
//
//  Created by Kim Yewon on 2023/09/20.
//  Copyright © 2023 labo.summer. All rights reserved.
//

import Foundation
import NetworkService

public struct iTuensDataResponseModel: Codable, Hashable {
    public let resultCount: Int?
    public let results: [iTuensModel]?
    
    private enum CodingKeys: String, CodingKey {
        case resultCount = "resultCount"
        case results = "results"
    }
    
    public init(from decoder: Decoder?) {
        guard let decoder = decoder else {
            self.resultCount = 0
            self.results = []
            return
        }
        
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            let resultCount = try container.decode(Int.self, forKey: .resultCount)
            let results = try container.decode([iTuensModel].self, forKey: .results)
            
            self.resultCount = resultCount
            self.results = results
        } catch {
            print(error)
            self.resultCount = 0
            self.results = []
        }
    }
}

public struct iTuensModel: Codable, Hashable, Identifiable {
    public let isGameCenterEnabled: Bool?
    public let screenshotUrls: [String]?
    public let ipadScreenshotUrls: [String]?
    public let appletvScreenshotUrls: [String]?
    public let artworkUrl60: String?
    public let artworkUrl512: String?
    public let artworkUrl100: String?
    public let artistViewUrl: String?
    public let advisories: [String]?
    public let supportedDevices: [String]?
    public let kind: String?
    public let features: [String]?
    public let averageUserRatingForCurrentVersion: Double?
    public let trackCensoredName: String?
    public let languageCodesISO2A: [String]?
    public let fileSizeBytes: Int64?
    public let sellerUrl: String?
    public let contentAdvisoryRating: String?
    public let userRatingCountForCurrentVersion: Int?
    public let trackViewUrl: String?
    public let trackContentRating: String?
    public let sellerName: String?
    public let primaryGenreId: String?
    public let currentVersionReleaseDate: String?
    public let isVppDeviceBasedLicensingEnabled: Bool?
    public let genreIds: [String]?
    public let releaseNotes: String?
    public let minimumOsVersion: String?
    public let primaryGenreName: String?
    public let releaseDate: String?
    public let currency: String?
    public let wrapperType: String?
    public let version: String?
    public let description: String?
    public let artistId: String?
    public let artistName: String?
    public let genres: [String]?
    public let price: Double?
    public let bundleId: String?
    public let trackId: String?
    public let trackName: String?
    public let formattedPrice: String?
    public let averageUserRating: Double?
    public let userRatingCount: Int64?
    public let id = UUID()
    
    private enum CodingKeys: String, CodingKey {
        case isGameCenterEnabled = "isGameCenterEnabled"
        case screenshotUrls = "screenshotUrls"
        case ipadScreenshotUrls = "ipadScreenshotUrls"
        case appletvScreenshotUrls = "appletvScreenshotUrls"
        case artworkUrl60 = "artworkUrl60"
        case artworkUrl512 = "artworkUrl512"
        case artworkUrl100 = "artworkUrl100"
        case artistViewUrl = "artistViewUrl"
        case advisories = "advisories"
        case supportedDevices = "supportedDevices"
        case kind = "kind"
        case features = "features"
        case averageUserRatingForCurrentVersion = "averageUserRatingForCurrentVersion"
        case trackCensoredName = "trackCensoredName"
        case languageCodesISO2A = "languageCodesISO2A"
        case fileSizeBytes = "fileSizeBytes"
        case sellerUrl = "sellerUrl"
        case contentAdvisoryRating = "contentAdvisoryRating"
        case userRatingCountForCurrentVersion = "userRatingCountForCurrentVersion"
        case trackViewUrl = "trackViewUrl"
        case trackContentRating = "trackContentRating"
        case sellerName = "sellerName"
        case primaryGenreId = "primaryGenreId"
        case currentVersionReleaseDate = "currentVersionReleaseDate"
        case isVppDeviceBasedLicensingEnabled = "isVppDeviceBasedLicensingEnabled"
        case genreIds = "genreIds"
        case releaseNotes = "releaseNotes"
        case minimumOsVersion = "minimumOsVersion"
        case primaryGenreName = "primaryGenreName"
        case releaseDate = "releaseDate"
        case currency = "currency"
        case wrapperType = "wrapperType"
        case version = "version"
        case description = "description"
        case artistId = "artistId"
        case artistName = "artistName"
        case genres = "genres"
        case price = "price"
        case bundleId = "bundleId"
        case trackId = "trackId"
        case trackName = "trackName"
        case formattedPrice = "formattedPrice"
        case averageUserRating = "averageUserRating"
        case userRatingCount = "userRatingCount"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let isGameCenterEnabled = try? container.decodeSafe(Bool.self, forKey: .isGameCenterEnabled)
        let screenshotUrls = try? container.decodeSafe([String].self, forKey: .screenshotUrls)
        let ipadScreenshotUrls = try? container.decodeSafe([String].self, forKey: .ipadScreenshotUrls)
        let appletvScreenshotUrls = try? container.decodeSafe([String].self, forKey: .appletvScreenshotUrls)
        let artworkUrl60 = try? container.decodeSafe(String.self, forKey: .artworkUrl60)
        let artworkUrl512 = try? container.decodeSafe(String.self, forKey: .artworkUrl512)
        let artworkUrl100 = try? container.decodeSafe(String.self, forKey: .artworkUrl100)
        let artistViewUrl = try? container.decodeSafe(String.self, forKey: .artistViewUrl)
        let advisories = try? container.decodeSafe([String].self, forKey: .advisories)
        let supportedDevices = try? container.decodeSafe([String].self, forKey: .supportedDevices)
        let kind = try? container.decodeSafe(String.self, forKey: .kind)
        let features = try? container.decodeSafe([String].self, forKey: .features)
        let averageUserRatingForCurrentVersion = try? container.decodeSafe(Double.self, forKey: .averageUserRatingForCurrentVersion)
        let trackCensoredName = try? container.decodeSafe(String.self, forKey: .trackCensoredName)
        let languageCodesISO2A = try? container.decodeSafe([String].self, forKey: .languageCodesISO2A)
        let fileSizeBytes = try? container.decodeSafe(Int64.self, forKey: .fileSizeBytes)
        let sellerUrl = try? container.decodeSafe(String.self, forKey: .sellerUrl)
        let contentAdvisoryRating = try? container.decodeSafe(String.self, forKey: .contentAdvisoryRating)
        let userRatingCountForCurrentVersion = try? container.decodeSafe(Int.self, forKey: .userRatingCountForCurrentVersion)
        let trackViewUrl = try? container.decodeSafe(String.self, forKey: .trackViewUrl)
        let trackContentRating = try? container.decodeSafe(String.self, forKey: .trackContentRating)
        let sellerName = try? container.decodeSafe(String.self, forKey: .sellerName)
        let primaryGenreId = try? container.decodeSafe(String.self, forKey: .primaryGenreId)
        let currentVersionReleaseDate = try? container.decodeSafe(String.self, forKey: .currentVersionReleaseDate)
        let isVppDeviceBasedLicensingEnabled = try? container.decodeSafe(Bool.self, forKey: .isVppDeviceBasedLicensingEnabled)
        let genreIds = try? container.decodeSafe([String].self, forKey: .genreIds)
        let releaseNotes = try? container.decodeSafe(String.self, forKey: .releaseNotes)
        let minimumOsVersion = try? container.decodeSafe(String.self, forKey: .minimumOsVersion)
        let primaryGenreName = try? container.decodeSafe(String.self, forKey: .primaryGenreName)
        let releaseDate = try? container.decodeSafe(String.self, forKey: .releaseDate)
        let currency = try? container.decodeSafe(String.self, forKey: .currency)
        let wrapperType = try? container.decodeSafe(String.self, forKey: .wrapperType)
        let version = try? container.decodeSafe(String.self, forKey: .version)
        let description = try? container.decodeSafe(String.self, forKey: .description)
        let artistId = try? container.decodeSafe(String.self, forKey: .artistId)
        let artistName = try? container.decodeSafe(String.self, forKey: .artistName)
        let genres = try? container.decodeSafe([String].self, forKey: .genres)
        let price = try? container.decodeSafe(Double.self, forKey: .price)
        let bundleId = try? container.decodeSafe(String.self, forKey: .bundleId)
        let trackId = try? container.decodeSafe(String.self, forKey: .trackId)
        let trackName = try? container.decodeSafe(String.self, forKey: .trackName)
        let formattedPrice = try? container.decodeSafe(String.self, forKey: .formattedPrice)
        let averageUserRating = try? container.decodeSafe(Double.self, forKey: .averageUserRating)
        let userRatingCount = try? container.decodeSafe(Int64.self, forKey: .userRatingCount)
        
        self.isGameCenterEnabled = isGameCenterEnabled ?? false
        self.screenshotUrls = screenshotUrls ?? []
        self.ipadScreenshotUrls = ipadScreenshotUrls ?? []
        self.appletvScreenshotUrls = appletvScreenshotUrls ?? []
        self.artworkUrl60 = artworkUrl60 ?? ""
        self.artworkUrl512 = artworkUrl512 ?? ""
        self.artworkUrl100 = artworkUrl100 ?? ""
        self.artistViewUrl = artistViewUrl ?? ""
        self.advisories = advisories ?? []
        self.supportedDevices = supportedDevices ?? []
        self.kind = kind ?? ""
        self.features = features ?? []
        self.averageUserRatingForCurrentVersion = averageUserRatingForCurrentVersion ?? 0.0
        self.trackCensoredName = trackCensoredName ?? ""
        self.languageCodesISO2A = languageCodesISO2A ?? []
        self.fileSizeBytes = fileSizeBytes ?? 0
        self.sellerUrl = sellerUrl ?? ""
        self.contentAdvisoryRating = contentAdvisoryRating ?? ""
        self.userRatingCountForCurrentVersion = userRatingCountForCurrentVersion ?? 0
        self.trackViewUrl = trackViewUrl ?? ""
        self.trackContentRating = trackContentRating ?? ""
        self.sellerName = sellerName ?? ""
        self.primaryGenreId = primaryGenreId ?? ""
        self.currentVersionReleaseDate = currentVersionReleaseDate ?? ""
        self.isVppDeviceBasedLicensingEnabled = isVppDeviceBasedLicensingEnabled ?? false
        self.genreIds = genreIds ?? []
        self.releaseNotes = releaseNotes ?? ""
        self.minimumOsVersion = minimumOsVersion ?? ""
        self.primaryGenreName = primaryGenreName ?? ""
        self.releaseDate = releaseDate ?? ""
        self.currency = currency ?? ""
        self.wrapperType = wrapperType ?? ""
        self.version = version ?? ""
        self.description = description ?? ""
        self.artistId = artistId ?? ""
        self.artistName = artistName ?? ""
        self.genres = genres ?? []
        self.price = price ?? 0.0
        self.bundleId = bundleId ?? ""
        self.trackId = trackId ?? ""
        self.trackName = trackName ?? ""
        self.formattedPrice = formattedPrice ?? ""
        self.averageUserRating = averageUserRating ?? 0.0
        self.userRatingCount = userRatingCount ?? 0
    }
    
}


extension KeyedDecodingContainer {
    
    func decodeSafe<T: Decodable>(_ type: T.Type, forKey key: KeyedDecodingContainer.Key) throws -> T? {
        let value = try? self.decode(T.self, forKey: key)
        
        if value != nil {
            return value
        }
        
        if let value = try? self.decode(String.self, forKey: key) {
            if T.self is Int.Type {
                return Int(value.isEmpty ? "0" : value) as? T
            } else if T.self is Int64.Type {
                return Int64(value.isEmpty ? "0" : value) as? T
            } else if T.self is Double.Type {
                return Double(value.isEmpty ? "0.0" : value) as? T
            } else if T.self is Float.Type {
                return Float(value.isEmpty ? "0.0" : value) as? T
            }
        }
        
        return nil
    }
    
    func decodeInt64(forKey key: KeyedDecodingContainer.Key) throws -> Int64 {
        if let value = try? self.decode(String.self, forKey: key) {
            return Int64(value.isEmpty ? "0" : value)!
        } else if let value = try? self.decode(Int64.self, forKey: key) {
            return Int64(value)
        } else if let value = try? self.decode(Double.self, forKey: key) {
            return Int64(value)
        } else if let value = try? self.decode(Float.self, forKey: key) {
            return Int64(value)
        }
        return 0
    }
    
    func decodeDouble(forKey key: KeyedDecodingContainer.Key) throws -> Double {
        if let value = try? self.decode(String.self, forKey: key) {
            return Double(value.isEmpty ? "0.0" : value)!
        } else if let value = try? self.decode(Int.self, forKey: key) {
            return Double(value)
        } else if let value = try? self.decode(Double.self, forKey: key) {
            return Double(value)
        } else if let value = try? self.decode(Float.self, forKey: key) {
            return Double(value)
        }
        return 0.0
    }
}
