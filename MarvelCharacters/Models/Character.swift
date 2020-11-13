//
//  Character.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

struct Character: Decodable {
    
    let name: String
    let characterDescription: String
    let thumbnail: Thumbnail
    let comicsInfo: Comics
    let seriesInfo: Series
    var comics: [Comic] = []
    var series: [Serie] = []

    var comicsCollectionUrl: URL {
        return comicsInfo.collectionURI
    }

    var seriesCollectionUrl: URL {
        return seriesInfo.collectionURI
    }

    private enum CodingKeys: String, CodingKey {
        case name, thumbnail
        case characterDescription = "description"
        case comicsInfo = "comics"
        case seriesInfo = "series"
    }
}
