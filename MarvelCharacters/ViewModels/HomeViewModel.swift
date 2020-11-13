//
//  HomeViewModel.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

protocol HomeViewModelDelegate: class {
    func charactersDidChange()
    func fetchDidFailed()
}

class HomeViewModel {
    
    // MARK: Properties
    let title = "MARVEL"
    weak var viewDelegate: HomeViewModelDelegate?
    let charactersService: CharactersService
    private var charactersList: [Character] = [Character]() {
        didSet {
            self.viewDelegate?.charactersDidChange()
        }
    }

    init(withCharactersService charactersService: CharactersService = CharactersService()) {
        self.charactersService = charactersService
    }
    
    func loadCharacters () {
        charactersService.fetch { [weak self] result in
            switch result {
            case .success(let characters):
                self?.charactersList.append(contentsOf: characters)
            case .failure:
                self?.viewDelegate?.fetchDidFailed()
            }
        }
    }
    
    func characterCellViewModel(at indexPath: IndexPath) -> CharacterCellViewModel {
        return CharacterCellViewModel(withCharacter: charactersList[indexPath.row])
    }
    
    func detailViewModel(for indexPath: IndexPath) -> DetailViewModel {
        return DetailViewModel(withCharacter: charactersList[indexPath.row])
    }
    
    func numberOfCharacters () -> Int {
        return charactersList.count
    }
}
