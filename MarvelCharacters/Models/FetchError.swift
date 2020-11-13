//
//  FetchError.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

enum FetchError: Error {
    case invalidJSON
    case invalidURL
    case networkFailed
    case limite
}
