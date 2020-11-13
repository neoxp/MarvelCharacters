//
//  CharacterCellViewModel.swift
//  POCView
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

class CharacterCellViewModel: CharacterHandler {
    
    var character: Character
    
    init(withCharacter character: Character) {
        self.character = character
    }
}
