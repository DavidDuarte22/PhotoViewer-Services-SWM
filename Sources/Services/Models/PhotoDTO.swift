//
//  PhotoDTO.swift
//  PhotoViewerApp_Example
//
//  Created by David Duarte on 06/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

// MARK: - Photo
public struct PhotoDTO: Codable {
    let id, width, height: Int
    let url: String
    let photographer: String
    let photographerURL: String
    let photographerID: Int
    let avgColor: String
    let src: SrcDTO
    let liked: Bool
    
    public init(id: Int, width: Int, height: Int, url: String, photographer: String, photographerURL: String, photographerID: Int, avgColor: String, src: SrcDTO, liked: Bool){
        self.id = id
        self.width = width
        self.height = height
        self.url = url
        self.photographer = photographer
        self.photographerID = photographerID
        self.photographerURL = photographerURL
        self.avgColor = avgColor
        self.src = src
        self.liked = liked
    }
    
    enum CodingKeys: String, CodingKey {
        case id, width, height, url, photographer
        case photographerURL = "photographer_url"
        case photographerID = "photographer_id"
        case avgColor = "avg_color"
        case src, liked
    }
}

// MARK: - Src
public struct SrcDTO: Codable {
    let original, large2X, large, medium: String
    let small, portrait, landscape, tiny: String
    
    public init(original: String, large2X: String, large: String, medium: String, small: String, portrait: String, landscape: String, tiny: String) {
        self.original = original
        self.large2X = large2X
        self.large = large
        self.medium = medium
        self.small = small
        self.portrait = portrait
        self.landscape = landscape
        self.tiny = tiny
    }
    
    enum CodingKeys: String, CodingKey {
        case original
        case large2X = "large2x"
        case large, medium, small, portrait, landscape, tiny
    }
}
