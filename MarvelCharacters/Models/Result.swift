//
//  Result.swift
//  MarvelCharacters
////
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
