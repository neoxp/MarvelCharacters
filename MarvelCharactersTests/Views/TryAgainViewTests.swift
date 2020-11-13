//
//  TryAgainViewTests.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
@testable import MarvelCharacters

class TryAgainViewTests: XCTestCase {

    func testInitWithCoderShouldBeNil() {
        XCTAssertNil(TryAgainView(coder: NSCoder()))
    }
}
