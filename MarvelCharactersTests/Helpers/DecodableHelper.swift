//
//  DecodableHelper.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

struct DecodableHelper {

    static func decode<T: Decodable>(_ decodable: T.Type, dictionary: [String: Any]) -> T? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: jsonData)
    }
}
