//
//  CharacterMock.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation
@testable import MarvelCharacters

struct CharacterMock {
    static var instance: Character {
        return Character(name: "cicero",
                         characterDescription: "",
                         thumbnail: Thumbnail(path: "abc", imageExtension: "png"),
                         comicsInfo: Comics(available: 1, collectionURI: URL(string: "http://abc.com")!),
                         seriesInfo: Series(available: 1, collectionURI: URL(string: "http://abc.com")!))
    }
}
