//
//  PhotosRequestDTO.swift
//  PhotoViewerApp_Example
//
//  Created by David Duarte on 06/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

// MARK: - Welcome
public struct PhotosRequestDTO: Codable {
    let totalResults, page, perPage: Int
    let photos: [PhotoDTO]
    let nextPage: String

    public init(totalResults: Int, page: Int, perPage: Int, photos: [PhotoDTO], nextPage: String){
        self.totalResults = totalResults
        self.page = page
        self.perPage = perPage
        self.photos = photos
        self.nextPage = nextPage
    }
    
    enum CodingKeys: String, CodingKey {
        case totalResults = "total_results"
        case page
        case perPage = "per_page"
        case photos
        case nextPage = "next_page"
    }
}
