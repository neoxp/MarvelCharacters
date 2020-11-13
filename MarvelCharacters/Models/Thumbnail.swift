//
//  Thumbnail.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

struct Thumbnail: Decodable {
    
    let path: String
    let imageExtension: String

    private enum CodingKeys: String, CodingKey {
        case path,
        imageExtension = "extension"
    }

    var url: URL? {
        return URL(string: path + "/standard_amazing." + imageExtension)
    }
    
    var portraitUrl: URL? {
        return URL(string: path + "/portrait_fantastic." + imageExtension)
    }
}
