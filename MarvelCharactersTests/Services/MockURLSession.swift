//
//  MockURLSession.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
import Foundation
@testable import MarvelCharacters

class MockURLSession: URLSessionProtocol {
    private (set) var lastURL: URL?
    var nextDataTask = MockURLSessionDataTask()
    var nextResponse: HTTPURLResponse?
    var nextData: Data?
    var nextError: FetchError?
    
    func data(with url: URL, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol {
        lastURL = url
        completionHandler(nextData, nextResponse, nextError)
        return nextDataTask
    }
}
