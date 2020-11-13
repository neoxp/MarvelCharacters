//
//  NetworkingResponseHelper.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

enum Status: String {
    case valid = "ValidResponse"
    case invalid = "InvalidReponse"
    case empty = "EmptyResponse"
}

enum Service: String {
    case characterList = "CharacterList"
    case characterDetail = "CharacterDetail"
}

class NetworkingHelper {

    func response(of service: Service, status: Status) -> Data {
        let file = service.rawValue + status.rawValue
        guard let path = Bundle(for: type(of: self)).url(forResource: file, withExtension: "json"),
            let result = try? Data(contentsOf: path) else { return Data() }
        return result
    }
}
