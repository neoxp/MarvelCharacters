//
//  ServiceSeriesTests.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
import Foundation
@testable import MarvelCharacters

class ServiceSeriesTests: XCTestCase {
    var sut: SeriesService!
    var session = MockURLSession()
    let url = URL(string: "http://www.github.com")!
    var error: FetchError?
    
    override func setUp() {
        super.setUp()
        sut = SeriesService(session: session)
        error = nil
    }
    
    func testResponseDataReturnsError() {
        sut.fetch(withURL: url) { (response) in
            switch response {
            case .success(let characters):
                XCTAssertNil(characters)
            case .failure(let error):
                XCTAssertNotNil(error)
            }
        }
    }
}
