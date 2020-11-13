//
//  ComicCellTests.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
@testable import MarvelCharacters

class ComicCellTests: XCTestCase {

    func testInitWithFrameShouldInitializeViews() {
        let serieCell = ComicCell(frame: .zero)

        XCTAssertTrue(serieCell.name.font.pointSize == 16)
        XCTAssertTrue(serieCell.image.clipsToBounds)
    }

    func testInitWithCoderShouldBeNil() {
        XCTAssertNil(ComicCell(coder: NSCoder()))
    }
}
