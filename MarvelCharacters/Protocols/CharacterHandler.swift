//
//  HeroHandler.swift
//  MarvelHeroes
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

protocol CharacterHandler {
    var character: Character { get }
}

extension CharacterHandler {
    
    func characterName () -> String {
        return character.name
    }
    
    func characterImage () -> URL? {
        return character.thumbnail.url
    }
}
