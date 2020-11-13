//
//  SeriesService.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

class SeriesService: ServiceBase {
    
    func fetch (withURL url: URL, completionHandler: @escaping (Result<[Serie], FetchError>) -> Void) {
        
        fetch(listOf: Serie.self, withURL: URL(string: url.absoluteString + getParameters())) { (result) in
            switch result {
            case .success(let series):
                completionHandler(Result.success(series))
            case .failure(let error):
                completionHandler(Result.failure(error))
            }
        }
    }
}
