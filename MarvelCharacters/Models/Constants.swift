//
//  Constants.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

struct Layout {
    static let margin: CGFloat = 8.0
}

struct Keys {
    static let privateKey: String = "PRIVATE_KEY"
    static let publicKey: String = "PUBLIC_KEY"
}

struct Servies {
    static let base: String = "https://gateway.marvel.com/v1/public/"
}

struct ServiceParameters {
    static let apiKey: String = "apikey"
    static let hash: String = "hash"
    static let timestamp: String = "ts"
    static let offset: String = "offset"
}
