//
//  DynamicHeightLayoutTests.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
@testable import MarvelCharacters

class DynamicHeightLayoutTests: XCTestCase {

    let sut = DynamicHeightLayout()

    func testCollectionViewContentSizeWithoutCollectionViewShouldReturnZero() {
        XCTAssertTrue(sut.collectionViewContentSize == .zero)
    }

    func testLayoutAttributesForElementsWithoutCollectionViewAndDelegateShouldReturnEmpty() {
        sut.prepare()

        let attributes = sut.layoutAttributesForElements(in: .zero)

        XCTAssertTrue(attributes?.isEmpty ?? false)
    }
}
