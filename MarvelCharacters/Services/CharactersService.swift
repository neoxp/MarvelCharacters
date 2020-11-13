//
//  CharactersService.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

class CharactersService: ServiceBase {
    
    func fetch (completionHandler: @escaping (Result<[Character], FetchError>) -> Void) {
        
        fetch(listOf: Character.self, withURL: url(withPath: "characters")) { (result) in
            switch result {
            case .success(let characters):
                completionHandler(Result.success(characters))
            case .failure(let error):
                completionHandler(Result.failure(error))
            }
        }
    }
}
