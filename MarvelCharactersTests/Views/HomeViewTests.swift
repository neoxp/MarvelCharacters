//
//  HomeViewTests.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
@testable import MarvelCharacters

class HomeViewTests: XCTestCase {

    func testInitWithCoderShouldBeNil() {
        XCTAssertNil(HomeView(coder: NSCoder()))
    }
}
